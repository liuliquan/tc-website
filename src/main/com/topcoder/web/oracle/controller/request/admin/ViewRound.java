package com.topcoder.web.oracle.controller.request.admin;

import com.topcoder.web.common.NavigationException;
import com.topcoder.web.common.StringUtils;
import com.topcoder.web.oracle.Constants;
import com.topcoder.web.oracle.dao.OracleDAOUtil;
import com.topcoder.web.oracle.model.Contest;
import com.topcoder.web.oracle.model.Round;
import com.topcoder.web.oracle.model.RoundStatus;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: Mar 29, 2007
 */
public class ViewRound extends Base {

    protected void dbProcessing() throws Exception {
        String roundId = getRequest().getParameter(Constants.ROUND_ID);
        String contestId = getRequest().getParameter(Constants.CONTEST_ID);

        if (!"".equals(StringUtils.checkNull(contestId))) {
            Contest c = OracleDAOUtil.getFactory().getContestDAO().find(new Integer(contestId));
            if (c==null) {
                throw new NavigationException("Invalid Contest specified");
            } else {
                if (!"".equals(StringUtils.checkNull(roundId))) {
                    //load
                    Round round = OracleDAOUtil.getFactory().getRoundDAO().find(new Integer(roundId));
                    loadEditRoundData(round);
                } else {
                    setDefault(Constants.ROUND_STATUS_ID, RoundStatus.UNACTIVE);
                    loadGeneralEditRoundData();
                }
                setDefault(Constants.CONTEST_ID, c.getId());
                setNextPage("/admin/editRound.jsp");
                setIsNextPageInContext(true);
            }
        } else {
            throw new NavigationException("No Contest specified");
        }


    }
}
