package com.topcoder.web.servlet;

import com.topcoder.common.web.constant.TCServlet;
import com.topcoder.common.web.data.Navigation;
import com.topcoder.common.web.error.NavigationException;
import com.topcoder.common.web.util.Conversion;
import com.topcoder.common.web.xml.HTMLRenderer;
import com.topcoder.shared.docGen.xml.ValueTag;
import com.topcoder.shared.docGen.xml.XMLDocument;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.DecimalFormat;
import java.util.Calendar;


public final class TaskTime {

    static String process
            (
            HttpServletRequest request
            , HttpServletResponse response
            , HTMLRenderer HTMLmaker
            , Navigation nav
            , XMLDocument document
            ) throws NavigationException {
        String result = null;
        String command = null;
        try {
            command = Conversion.checkNull(request.getParameter("c"));
            if (command.startsWith("EDT")) {
                Calendar now = Calendar.getInstance();
                StringBuffer t = new StringBuffer();
                int hr = now.get(Calendar.HOUR);
                if (hr == 0) hr = 12;
                t.append(hr);
                t.append(":");
                t.append(new DecimalFormat("00").format(now.get(Calendar.MINUTE)));
                if (now.get(Calendar.AM_PM) == 1)
                    t.append(" PM");
                else
                    t.append(" AM");
                document.addTag(new ValueTag("time", t.toString()));
            }
            result = TaskStatic.displayStatic(HTMLmaker, request, nav, document);
        } catch (Exception e) {
            StringBuffer msg = new StringBuffer(150);
            msg.append("TaskTime:process:");
            msg.append(command);
            msg.append(":ERROR:");
            msg.append(e.getMessage());
            throw new NavigationException(msg.toString(),
                    TCServlet.XSL_ROOT + TCServlet.XSL_ROOT + TCServlet.NAVIGATION_ERROR_PAGE);
        }
        return result;
    }


}
