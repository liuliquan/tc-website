package com.topcoder.web.tc.controller.legacy.resume.servlet;

import com.topcoder.shared.util.logging.Logger;
import com.topcoder.shared.util.TCContext;
import com.topcoder.web.tc.controller.legacy.resume.bean.ResumeTask;
import com.topcoder.web.tc.controller.legacy.resume.common.Constants;
import com.topcoder.servlet.request.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.naming.InitialContext;
import java.io.IOException;
import java.util.Enumeration;

public class Controller
        extends HttpServlet {
    private static Logger log = Logger.getLogger(Controller.class);

    public void init() throws ServletException {
        Constants.init(getServletConfig());
    }

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {
        HttpSession session = null;
        InitialContext ctx = null;
        FileUpload fu = null;
        String taskName = null;
        String taskStepName = null;
        try {
            try {
                fu = new FileUpload(request, false);
            } catch (InvalidContentTypeException ignore) {
                //that's ok, we'll just procede with out
            }
            if (fu == null) {
                taskName = request.getParameter(Constants.TASK_KEY);
                taskStepName = request.getParameter(Constants.STEP_KEY);
            } else {
                taskName = fu.getParameter(Constants.TASK_KEY);
                taskStepName = fu.getParameter(Constants.STEP_KEY);
            }
            log.info("[**** resume **** " + taskName + " **** " + request.getRemoteHost() + " ****]");
            log.debug(taskName);
            if (taskName == null || !isWord(taskName)) {
                log.debug(Constants.TASK_KEY + " not found in request. - "+taskName);
                forwardToError(request, response, new Exception(Constants.TASK_KEY + " not found in request."));
                return;
            }
            ctx = (InitialContext) TCContext.getInitial();
            session = request.getSession(true);
            ResumeTask task = null;
            Class taskClass = null;
            log.debug("about to make task: "+taskName);
            if (taskName != null && taskName.trim().length() > 0) {
                // process a task
                taskClass = Class.forName(Constants.TASK_PACKAGE + "." + taskName);

                task = (ResumeTask)taskClass.newInstance();

                task.setInitialContext(ctx);
       
                Enumeration parameterNames = request.getParameterNames();
                while (parameterNames.hasMoreElements()) {
                    String parameterName = parameterNames.nextElement().toString();
                    String[] parameterValues = request.getParameterValues(parameterName);
                    if (parameterValues != null) {
                        task.setAttributes(parameterName, parameterValues);
                    }
                }

                task.setFileUpload(fu);

                task.servletPreAction(request, response);

                task.processStep(taskStepName);

                task.servletPostAction(request, response);

                request.setAttribute(taskName, task);


                if (!response.isCommitted()) {
                    log.debug(task.getNextPage());

                    if (task.getNextPageInternal()) {
                        getServletContext().getRequestDispatcher(
                                response.encodeURL(task.getNextPage())).forward(request, response);
                    } else {
                        response.sendRedirect(response.encodeURL(task.getNextPage()));
                    }
                }
            }
            else {
                forwardToError(request, response,
                        new Exception("missing " + Constants.TASK_KEY + " parameter in request"));
            }

        } catch (ClassNotFoundException cnfex) {
            log.debug("Unable to dispatch task! " + cnfex.getMessage());
            try{
                forwardToError(request, response, cnfex);
                return;
            } catch(Exception e){
                throw new ServletException(e.getMessage());
            }
        } catch (ServletException se) {
            throw se;
        } catch (Exception e) {
            log.error("Exception in resume Controller");
            e.printStackTrace();
            try{
                forwardToError(request, response, e);
            }
            catch(Exception e2){
                throw new ServletException(e2.getMessage());
            }
        }
    }

    boolean isWord(String s) {
        if (s == null || s.length() == 0) return false;
        for (int i = 0; i < s.length(); i++) {
            if (!Character.isLetter(s.charAt(i))) return false;
        }
        return true;
    }

    void forwardToError(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext sc = getServletContext();
        sc = sc.getContext("/");
        RequestDispatcher requestDispatcher = sc.getRequestDispatcher(response.encodeURL(Constants.ERROR_PAGE));
        requestDispatcher.forward(request, response);
    }

    void forwardToError(HttpServletRequest request, HttpServletResponse response, Throwable exception)
            throws ServletException, IOException {
        if (exception != null) {
            request.setAttribute("exception", exception);
        }
        forwardToError(request, response);
    }

}
