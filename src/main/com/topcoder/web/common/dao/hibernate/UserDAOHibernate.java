/*
 * Copyright (C) 2013 TopCoder Inc., All Rights Reserved.
 */
package com.topcoder.web.common.dao.hibernate;

import com.topcoder.web.common.dao.DAOUtil;
import com.topcoder.web.common.dao.UserDAO;
import com.topcoder.web.common.dao.UserSchoolDAO;
import com.topcoder.web.common.model.DemographicQuestion;
import com.topcoder.web.common.model.DemographicResponse;
import com.topcoder.web.common.model.User;
import com.topcoder.web.common.model.UserSchool;
import com.topcoder.web.common.validation.StringInput;
import com.topcoder.web.common.validation.ValidationResult;
import com.topcoder.web.reg.Constants;
import com.topcoder.web.reg.validation.EmailValidator;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.hibernate.HibernateException;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/**
 * <p>
 * Update (Release Assembly - TopCoder Password Recovery Revamp v1.0): Add implementation of
 * <code>findByPrimaryOrSecondEmail(String email)</code> method.
 * </p>
 * <p>
 * Update (Release Assembly - OpenID Project Update 1 v1.0 ): Add implementation of
 * <code>public getUserByOpenId(String openId)</code> method.
 * </p>
 * <p>
 * Thread safety: The DAO instances are created for each controller when they are used, thus there won't be
 * multiple threads accessing the same DAO. No multiple threads share the same model class instances. Thus there's
 * no thread-safety concern.
 * </p>
 * 
 * @author dok, TCSASSEMBLER
 * @version $Revision$ Date: 2005/01/01 00:00:00 Create Date: Apr 7, 2006 updated date: Sept 26th, 2011
 */
public class UserDAOHibernate extends Base implements UserDAO {

    /**
     * <p>
     * Represent the qualified name of this class.
     * </p>
     */
    private static final String CLASS_NAME = UserDAOHibernate.class.getName();

    public UserDAOHibernate() {
        super();
    }

    public UserDAOHibernate(Session session) {
        super(session);
    }

    public User find(Long id) {
        return (User) super.find(User.class, id);
    }

    public User find(String userName, boolean ignoreCase) {
        return find(userName, ignoreCase, false);
    }

    public User find(String userName, boolean ignoreCase, boolean activeRequired) {
        StringBuffer query = new StringBuffer(100);
        query.append("FROM User WHERE ");
        if (ignoreCase) {
            query.append("handle_lower ");
        } else {
            query.append("handle ");
        }
        query.append(" = ? ");
        if (activeRequired) {
            query.append(" AND status = ?");
        }
        Query q = session.createQuery(query.toString());
        if (ignoreCase) {
            q.setString(0, userName.toLowerCase());
        } else {
            q.setString(0, userName);
        }
        if (activeRequired) {
            q.setString(1, String.valueOf(Constants.ACTIVE_STATI[1]));
        }
        return (User) q.uniqueResult();

    }

    public List find(String handle, String firstName, String lastName, String email) {
        Criteria crit = session.createCriteria(User.class);
        if (handle != null && handle.length() > 0) {
            crit.add(Restrictions.sqlRestriction("lower({alias}.handle)=lower(?)", handle, Hibernate.STRING));
        }

        if (email != null && email.length() > 0) {
            crit.createCriteria("emailAddresses")
                .add(Restrictions.sqlRestriction("lower({alias}.address)=lower(?)", email, Hibernate.STRING))
                .add(Restrictions.eq("primary", Boolean.TRUE));
        }

        if (firstName != null && firstName.length() > 0) {
            crit.add(Restrictions.sqlRestriction("lower({alias}.first_name)=lower(?)", firstName, Hibernate.STRING));
        }

        if (lastName != null && lastName.length() > 0) {
            crit.add(Restrictions.sqlRestriction("lower({alias}.last_name)=lower(?)", lastName, Hibernate.STRING));
        }

        return crit.list();
    }

    public void saveOrUpdate(User u) {
// boolean isNew = u.isNew();

/*
 * DemographicResponse temp; for (Iterator it = u.getTransientResponses().iterator(); it.hasNext();) { temp =
 * ((DemographicResponse) it.next()); temp.setUser(u); }
 */

        UserSchoolDAO usd = DAOUtil.getFactory().getUserSchoolDAO();
        if (u.getId() == null) {
            log.debug("newbie");
            DemographicResponse tr;
            DemographicResponse dr;
            for (Iterator it = u.getTransientResponses().iterator(); it.hasNext();) {
                tr = (DemographicResponse) it.next();
                dr = new DemographicResponse();
                dr.setAnswer(tr.getAnswer());
                dr.setQuestion(tr.getQuestion());
                dr.setResponse(tr.getResponse());
                dr.setUser(u);
                dr.getId().setAnswer(tr.getAnswer());
                dr.getId().setQuestion(tr.getQuestion());
                dr.getId().setUser(u);
                u.addDemographicResponse(dr);
                // super.saveOrUpdate(dr);
            }
            super.saveOrUpdate(u);
            // can't figure out how to map this so that the changes get propegated through user, so doing it
// explicitly
            for (UserSchool us : u.getSchools()) {
                usd.saveOrUpdate(us);
            }

        } else {
            log.debug("update user");
            // todo consider putting all this logic in the POJO instead of here.

            // don't need to worry about anything that is already in the db.
            DemographicResponse temp;
            // log.debug("trans size b4" + u.getTransientResponses().size());
            for (Iterator it = u.getDemographicResponses().iterator(); it.hasNext();) {
                temp = (DemographicResponse) it.next();
                if (temp.getQuestion().isFreeForm() || temp.getQuestion().isSingleSelect()) {
                    u.removeTransientResponse(temp);
                    // log.debug("remove trans response " + temp.getQuestion().getId() + " " +
// temp.getAnswer().getId() + " " + temp.hashCode());
                }

            }
            // log.debug("trans size after" + u.getTransientResponses().size());

            DemographicResponse dr;
            DemographicResponse badResponse;
            HashSet processedQuestions = new HashSet();
            DemographicResponse goodResponse;
            for (Iterator it = u.getTransientResponses().iterator(); it.hasNext();) {
                dr = (DemographicResponse) it.next();
                // log.debug("process:" + dr.getQuestion().getId() + " " + dr.getAnswer().getId() + " " +
// dr.getResponse());
                if (dr.getQuestion().isSingleSelect()) {
                    // log.debug("single: " + dr.getQuestion().getId());
                    badResponse = findResponse(u.getDemographicResponses(), dr.getQuestion());
                    if (badResponse != null) {
                        // log.debug("remove " + badResponse.getQuestion().getId() + " " +
// badResponse.getAnswer().getId() + " size:" + u.getDemographicResponses().size());
                        u.removeDemographicResponse(badResponse);
                        // log.debug("size after remove " + u.getDemographicResponses().size());
                        badResponse.setUser(null);
                    }
                    dr.setUser(u);
                    dr.getId().setUser(u);
                    dr.getId().setQuestion(dr.getQuestion());
                    dr.getId().setAnswer(dr.getAnswer());
                    // log.debug("adding response:" + dr.getQuestion().getId() + " " + dr.getAnswer().getId() + " "
// + dr.getResponse());
                    u.addDemographicResponse(dr);

                } else if (dr.getQuestion().isFreeForm()) {
                    // log.debug("free form: " + dr.getQuestion().getId());
                    badResponse = findResponse(u.getDemographicResponses(), dr.getQuestion());
                    if (badResponse == null) {
                        // log.debug("add " + dr.getQuestion().getId() + " " + dr.getAnswer().getId() + " " +
// dr.getResponse());
                        dr.setUser(u);
                        dr.getId().setUser(u);
                        dr.getId().setQuestion(dr.getQuestion());
                        dr.getId().setAnswer(dr.getAnswer());
                        u.addDemographicResponse(dr);
                    } else {
                        // log.debug("set " + badResponse.getQuestion().getId() + " " +
// badResponse.getAnswer().getId() + " to " + dr.getResponse());
                        badResponse.setResponse(dr.getResponse());
                    }
                } else if (!processedQuestions.contains(dr.getQuestion())) {
                    // log.debug("multiple");

                    Set currResponses = findResponses(u.getDemographicResponses(), dr.getQuestion());
                    Set newResponses = findResponses(u.getTransientResponses(), dr.getQuestion());
                    // remove any responses from the database that the user hasn't chosen
                    for (Iterator itr = currResponses.iterator(); itr.hasNext();) {
                        badResponse = (DemographicResponse) itr.next();
                        if (!newResponses.contains(badResponse)) {
                            u.removeDemographicResponse(badResponse);
                            badResponse.setUser(null);
                        }
                    }
                    // add any responses to the db that the user has chosen that are not current there
                    for (Iterator itr = newResponses.iterator(); itr.hasNext();) {
                        goodResponse = (DemographicResponse) itr.next();
                        if (!currResponses.contains(goodResponse)) {
                            goodResponse.setUser(u);
                            goodResponse.getId().setUser(u);
                            goodResponse.getId().setQuestion(goodResponse.getQuestion());
                            goodResponse.getId().setAnswer(goodResponse.getAnswer());
                            u.addDemographicResponse(goodResponse);
                        }
                    }
                    processedQuestions.add(dr.getQuestion());
                }
            }
            super.saveOrUpdate(u);
            // can't figure out how to map this so that the changes get propegated through user, so doing it
// explicitly
            for (UserSchool us : u.getSchools()) {
                usd.saveOrUpdate(us);
            }

        }
    }

    private DemographicResponse findResponse(Collection responses, DemographicQuestion q) {
        boolean found = false;
        DemographicResponse ret = null;
        for (Iterator it = responses.iterator(); it.hasNext() && !found;) {
            ret = (DemographicResponse) it.next();
            found = ret.getQuestion().equals(q);
        }
        if (found) {
            return ret;
        } else {
            return null;
        }
    }

    private Set findResponses(Collection responses, DemographicQuestion q) {
        HashSet ret = new HashSet();
        DemographicResponse response;
        for (Iterator it = responses.iterator(); it.hasNext();) {
            response = (DemographicResponse) it.next();
            if (response.getQuestion().equals(q)) {
                ret.add(response);
            }
        }
        log.debug("found " + ret.size() + " responses for " + q.getId());
        return ret;
    }

    /**
     * <p>
     * Get user by open id.
     * <p>
     * 
     * @param openId
     *            the open id for the user, not null.
     * @return the corresponding user, or null if there is no match.
     */
    public User getUserByOpenId(String openId) throws IllegalArgumentException {
        String signature = CLASS_NAME + "#getUserByOpenId(String openId)";

        log.debug("Entrance: " + signature + " with parameter openId = " + openId);

        if (null == openId) {
            throw new IllegalArgumentException("openId should NOT be null!");
        }
        User user = (User) super.findOne(User.class, "openId", openId);
        log.debug("Exit:" + signature + ", returning " + user);
        return user;
    }

    /**
     * <p>
     * Find out the users who have the given email address.
     * </p>
     * 
     * @param email
     *            the email address
     * @throws IllegalArgumentException
     *             if the argument is invalid.
     * @throws HibernateException
     *             if any SQL errors occurs to find primary or second email.
     * @return the users matched the email address.
     */
    public List<User> findByPrimaryOrSecondEmail(String email) {
        String signature = CLASS_NAME + "#findByPrimaryOrSecondEmail(String email)";

        log.debug("Entrance: " + signature + " with parameter email = " + email);

        ValidationResult vr = new EmailValidator().validate(new StringInput(email));

        if (!vr.isValid()) {
            throw new IllegalArgumentException("The email has a bad format.");
        }

        @SuppressWarnings("unchecked")
        List<User> users =
            session
                .createCriteria(User.class).add(Restrictions.eq("status", String.valueOf(Constants.ACTIVE_STATI[1])))
                .createCriteria("emailAddresses")
                .add(Restrictions.sqlRestriction("lower({alias}.address)=lower(?)", email, Hibernate.STRING))
                .add(
                    Restrictions.in("emailTypeId", new Integer[] {com.topcoder.web.tc.Constants.PRIMARY_EMAIL_TYPE_ID,
                        com.topcoder.web.tc.Constants.SECOND_EMAIL_TYPE_ID})).list();

        log.debug("Exit:" + signature + ", returning " + users.size() + " users.");

        return users;
    }
}
