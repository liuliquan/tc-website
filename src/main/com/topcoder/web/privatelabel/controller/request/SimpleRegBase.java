package com.topcoder.web.privatelabel.controller.request;

import com.topcoder.web.privatelabel.Constants;
import com.topcoder.web.privatelabel.model.SimpleRegInfo;
import com.topcoder.web.common.StringUtils;
import com.topcoder.web.common.TCWebException;
import com.topcoder.web.common.NavigationException;
import com.topcoder.security.NoSuchUserException;

import java.util.StringTokenizer;

/**
 * Provides some basic functionality for the different processors
 * involved in a simple registration process.
 * @author gpaul 06.26.2003
 */
abstract class SimpleRegBase extends RegistrationBase {

    protected abstract void registrationProcessing() throws TCWebException;

    protected void setDefaults(SimpleRegInfo info) {
        setDefault(Constants.HANDLE, info.getHandle());
        setDefault(Constants.PASSWORD, "");
        setDefault(Constants.PASSWORD_CONFIRM, "");
        setDefault(Constants.EMAIL, info.getEmail());
        setDefault(Constants.EMAIL_CONFIRM, info.getEmailConfirm());
        setDefault(Constants.FIRST_NAME, info.getFirstName());
        setDefault(Constants.MIDDLE_NAME, info.getMiddleName());
        setDefault(Constants.LAST_NAME, info.getLastName());
        setDefault(Constants.ADDRESS1, info.getAddress1());
        setDefault(Constants.ADDRESS2, info.getAddress2());
        setDefault(Constants.ADDRESS3, info.getAddress3());
        setDefault(Constants.COUNTRY_CODE, info.getCountryCode());
        setDefault(Constants.STATE_CODE, info.getStateCode());
        setDefault(Constants.CITY, info.getCity());
        setDefault(Constants.ZIP, info.getZip());
    }

    protected SimpleRegInfo makeRegInfo() throws Exception {
        SimpleRegInfo info = getRegInfoFromPersistor();
        if (info == null) {
            info = new SimpleRegInfo();
            info.setHandle(StringUtils.checkNull(getRequestParameter(Constants.HANDLE)));
            info.setPassword(StringUtils.checkNull(getRequestParameter(Constants.PASSWORD)));
            info.setPasswordConfirm(StringUtils.checkNull(getRequestParameter(Constants.PASSWORD_CONFIRM)));
            info.setEmail(StringUtils.checkNull(getRequestParameter(Constants.EMAIL)));
            info.setEmailConfirm(StringUtils.checkNull(getRequestParameter(Constants.EMAIL_CONFIRM)));
            info.setFirstName(StringUtils.checkNull(getRequestParameter(Constants.FIRST_NAME)));
            info.setMiddleName(StringUtils.checkNull(getRequestParameter(Constants.MIDDLE_NAME)));
            info.setLastName(StringUtils.checkNull(getRequestParameter(Constants.LAST_NAME)));
            info.setAddress1(StringUtils.checkNull(getRequestParameter(Constants.ADDRESS1)));
            info.setAddress2(StringUtils.checkNull(getRequestParameter(Constants.ADDRESS2)));
            info.setAddress3(StringUtils.checkNull(getRequestParameter(Constants.ADDRESS3)));
            info.setCountryCode(StringUtils.checkNull(getRequestParameter(Constants.COUNTRY_CODE)));
            info.setStateCode(StringUtils.checkNull(getRequestParameter(Constants.STATE_CODE)));
            info.setCity(StringUtils.checkNull(getRequestParameter(Constants.CITY)));
            info.setZip(StringUtils.checkNull(getRequestParameter(Constants.ZIP)));
            info.setCompanyId(Long.parseLong(StringUtils.checkNull(getRequestParameter(Constants.COMPANY_ID))));
        }
        return info;
    }

    protected void checkRegInfo(SimpleRegInfo info) throws TCWebException {
        //check handle
        if (info.getHandle().length() > Constants.MAX_HANDLE_LENGTH ||
                info.getHandle().length() < Constants.MIN_HANDLE_LENGTH) {
            addError(Constants.HANDLE, "Your handle must contain between " +
                    Constants.MIN_HANDLE_LENGTH + " and " + Constants.MAX_HANDLE_LENGTH + " characters.");
        }
        if (!StringUtils.containsOnly(info.getHandle(), Constants.HANDLE_ALPHABET, false)) {
            addError(Constants.HANDLE,
                    "Please limit the characters in your handle to letter, numbers and common punctuation symbols.");
        }
        try {
            getPrincipalManager().getUser(info.getHandle());
            addError(Constants.HANDLE, "Please choose another handle.");
        } catch (NoSuchUserException ne) {
            //ignore, this just means they user doesn't exist, so this is good.
        } catch (Exception e) {
            throw new TCWebException(e);
        }

        //check password
        if (info.getPassword().length() > Constants.MAX_PASSWORD_LENGTH ||
                info.getPassword().length() < Constants.MIN_PASSWORD_LENGTH) {
            addError(Constants.PASSWORD, "Your password must contain between " +
                    Constants.MIN_PASSWORD_LENGTH + " and " + Constants.MAX_PASSWORD_LENGTH + " characters.");
        }
        if (!info.getPassword().equals(info.getPasswordConfirm())) {
            addError(Constants.PASSWORD_CONFIRM, "Please be sure password and password confirmation match.");
        }

        //check email
        if (info.getEmail().length() > Constants.MAX_EMAIL_LENGTH) {
            addError(Constants.EMAIL, "Your password must be between at most " +
                    Constants.MAX_EMAIL_LENGTH + " characters.");
        }
        StringTokenizer st = new StringTokenizer(info.getEmail(), "@.");
        if (st.countTokens()!=3
                || !StringUtils.contains(info.getEmail(), '@')
                || !StringUtils.contains(info.getEmail(), '.')) {
            addError(Constants.EMAIL, "Please enter a valid email address.");
        }
        if (!info.getEmail().equals(info.getEmailConfirm())) {
            addError(Constants.EMAIL_CONFIRM, "Please be sure email and email confirmation match.");
        }

        //check first name
        if (info.getFirstName().length()<1) {
            addError(Constants.FIRST_NAME, "Please enter your first name.");
        }

        //nothing for middle name

        //check last name
        if (info.getLastName().length()<1) {
            addError(Constants.LAST_NAME, "Please enter your last name.");
        }

        //check address1
        if (info.getAddress1().length()<1) {
            addError(Constants.ADDRESS1, "Please enter your address.");
        }

        //nothing to check for address2

        //nothing to check for address3

        //check country code
        if (info.getCountryCode().trim().length()==0 || findCountry(info.getCountryCode())==null) {
            addError(Constants.COUNTRY_CODE, "Please chooose a country from the list.");
        }

        //state code
        if (info.getCountryCode().equals("840")) {
            if (info.getStateCode().trim().length()==0 || findState(info.getStateCode())==null) {
                addError(Constants.STATE_CODE, "Please chooose a state from the list.");
            }
        }

        //city
        if (info.getCity().length()<1) {
            addError(Constants.CITY, "Please enter your city.");
        }
        //zip
        if (info.getZip().length()<5) {
            addError(Constants.ZIP, "Please enter your zip code.");
        }
    }


}
