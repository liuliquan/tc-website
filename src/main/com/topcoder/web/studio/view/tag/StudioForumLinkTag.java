package com.topcoder.web.studio.view.tag;

import com.topcoder.shared.util.ApplicationServer;
import com.topcoder.web.forums.ForumConstants;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

/*
 * @author mtong
 * @date 8/26/05
 *
 * Returns a link to the given forum, displaying its message count.
 */

public class StudioForumLinkTag extends TagSupport {
    private long forumID = -1;
    private String message = "";

    public int doStartTag() throws JspException {
        StringBuffer ret = new StringBuffer(150);

        ret.append("<A");
        StringBuffer url = new StringBuffer();
        url.append("http://").append(ApplicationServer.STUDIO_SERVER_NAME).append("/forums");
        url.append("?module=ThreadList&").append(ForumConstants.FORUM_ID).append("=").append(forumID);
        ret.append(" HREF=\"").append(url).append("\"");
        ret.append(">");

        ret.append(this.message);

        ret.append("</A>");

        try {
            pageContext.getOut().print(ret.toString());
        } catch (Exception e) {
            throw new JspException(e.getMessage());
        }
        return SKIP_BODY;
    }

    public void setForumID(long forumID) {
        this.forumID = forumID;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    protected void init() {
        forumID = -1;
        message = "Discuss this";
    }

    public int doEndTag() throws JspException {
        forumID = -1;
        message = "";
        return super.doEndTag();
    }
}
