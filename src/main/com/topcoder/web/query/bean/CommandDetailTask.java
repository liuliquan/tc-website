package com.topcoder.web.query.bean;

import com.topcoder.shared.util.logging.Logger;
import com.topcoder.web.query.common.Constants;
import com.topcoder.web.query.common.AuthenticationException;
import com.topcoder.web.query.ejb.QueryServices.*;
import com.topcoder.shared.util.ApplicationServer;
import com.topcoder.shared.dataAccess.resultSet.ResultSetContainer;


import javax.servlet.http.*;
import java.io.Serializable;

/**
 * @author Greg Paul
 *
 */

public class CommandDetailTask extends BaseTask implements Task, Serializable {

    private static Logger log = Logger.getLogger(CommandDetailTask.class);

    private String db;
    private String commandDesc;
    private String groupDesc;
    private ResultSetContainer queryList;
    private ResultSetContainer inputList;
    private int commandId;

    /* Creates a new LoginTask */
    public CommandDetailTask() {
        super();
    }


	public void servletPreAction(HttpServletRequest request, HttpServletResponse response)
            throws AuthenticationException, Exception {
 	}

    public void servletPostAction(HttpServletRequest request, HttpServletResponse response) throws Exception {
    }

    public void process(String step) throws Exception {
        CommandQueryHome cqHome = (CommandQueryHome) getInitialContext().lookup(ApplicationServer.Q_COMMAND_QUERY);
        CommandQuery cq = cqHome.create();

        CommandHome cHome = (CommandHome) getInitialContext().lookup(ApplicationServer.Q_COMMAND);
        Command c = cHome.create();

        CommandGroupHome cgHome = (CommandGroupHome) getInitialContext().lookup(ApplicationServer.Q_COMMAND_GROUP);
        CommandGroup cg = cgHome.create();

        QueryInputHome qiHome = (QueryInputHome) getInitialContext().lookup(ApplicationServer.Q_QUERY_INPUT);
        QueryInput qi = qiHome.create();

        cq.setDataSource(getDb());
        c.setDataSource(getDb());
        cg.setDataSource(getDb());
        qi.setDataSource(getDb());

        setQueryList(cq.getQueriesForCommand(getCommandId()));
        setGroupDesc(cg.getCommandGroupDesc(c.getCommandGroupId(getCommandId())));
        setCommandDesc(c.getCommandDesc(getCommandId()));
        setInputList(qi.getInputsForCommand(getCommandId()));

        super.setNextPage(Constants.COMMAND_DETAIL_PAGE);
    }

    public void setAttributes(String paramName, String paramValues[]) {
        String value = paramValues[0];
        value = (value == null?"":value.trim());

        if (paramName.equalsIgnoreCase(Constants.DB_PARAM))
            setDb(value);
        else if (paramName.equalsIgnoreCase(Constants.COMMAND_ID_PARAM))
            setCommandId(Integer.parseInt(value));
    }

    public String getDb() {
        return db;
    }

    public void setDb(String db) {
        this.db = db;
    }

    public String getCommandDesc() {
        return commandDesc;
    }

    public void setCommandDesc(String commandDesc) {
        this.commandDesc = commandDesc;
    }

    public String getGroupDesc() {
        return groupDesc;
    }

    public void setGroupDesc(String groupDesc) {
        this.groupDesc = groupDesc;
    }

    public ResultSetContainer getQueryList() {
        return queryList;
    }

    public void setQueryList(ResultSetContainer queryList) {
        this.queryList = queryList;
    }

    public ResultSetContainer getInputList() {
        return inputList;
    }

    public void setInputList(ResultSetContainer inputList) {
        this.inputList = inputList;
    }

    public int getCommandId() {
        return commandId;
    }

    public void setCommandId(int commandId) {
        this.commandId = commandId;
    }


}


