package com.topcoder.web.corp.request;

import com.topcoder.security.NotAuthorizedException;
import com.topcoder.security.TCSubject;
import com.topcoder.shared.security.Authorization;
import com.topcoder.shared.security.PathResource;
import com.topcoder.shared.util.logging.Logger;
import com.topcoder.web.common.security.TCSAuthorization;
import com.topcoder.web.common.NavigationException;
import com.topcoder.web.corp.Constants;


/**
 * <p> Title: Static </p>
 * <p> Description: Handles "static" pages.  Serve up jsp's in essentially
 * any directory (below the root) The request processor gets the list of
 * parameters out of the request, validates them, and then processes them.
 *
 * @version   1.1.2.33
 * @author    Daniel Cohn, Ambrose Feinstein, Greg Paul
 */

public class Static extends BaseProcessor {

    private static final String STATIC_PREFIX = "d";  // Prefix for parameters
    private static final String VALID_PARAMETER_CHARS =
            "_-ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    private final static Logger log = Logger.getLogger(Static.class);


    protected void businessProcessing() throws Exception {

        StringBuffer path = new StringBuffer(100);
        path.append(Constants.JSP_ROOT.substring(0, Constants.JSP_ROOT.length()-1));
        for(int i=1; ; i++) {
            String p = request.getParameter(STATIC_PREFIX+i);
            if(p==null) break;
            if(!isLegal(p)) throw new NavigationException("disallowed path component: "+p);
            path.append("/").append(p);
        }
        if(path.equals("")) throw new NavigationException("path must have at least one component");
        path.append(".jsp");

        //using a shell of a tc subject object here, cuz we don't need the whole thing
        Authorization authorization = new TCSAuthorization(new TCSubject(authToken.getActiveUser().getId()));
        /* check whether the path is allowed for this type of user */
        if(!authorization.hasPermission(new PathResource(path.toString())))
            throw new NotAuthorizedException("access to page denied");

        log.debug("next page: " + path.toString());
        setNextPage(path.toString());
        setIsNextPageInContext(true);
    }

    public static boolean isLegal(String s) {
        if(s==null) return false;
        if(s.equals("")) return false;
        char[] c = s.toCharArray();
        for(int i=0; i<c.length; i++)
            if(0 > VALID_PARAMETER_CHARS.indexOf(c[i]))
                return false;
        return true;
    }

}
