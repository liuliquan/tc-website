<%@  page language="java"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<title>Ultimate Software Development Contest</title>

<jsp:include page="../script.jsp" />

</head>

<body>

<jsp:include page="../top.jsp" >
    <jsp:param name="level1" value="development"/>
</jsp:include>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
   <tr valign="top">
<!-- Left Column Begins-->
        <td width="180">
            <jsp:include page="../includes/global_left.jsp">
                <jsp:param name="level1" value="development"/>
                <jsp:param name="level2" value="contests"/>
                <jsp:param name="level3" value="ultimate"/>
            </jsp:include>
        </td>
<!-- Left Column Ends -->

<!-- Gutter Begins -->
        <td width="15"><img src="/i/clear.gif" width="15" height="1" border="0"/></td>
<!-- Gutter Ends -->

<!-- Center Column Begins -->
<td class="bodyText" WIDTH="100%"><img src="/i/clear.gif" width="400" height="1" vspace="5" border="0"><br />


<!-- Tab bar links-->
<jsp:include page="usdc_links.jsp" >
   <jsp:param name="selectedTab" value="results"/>
</jsp:include>


<h2>Results</h2>

<%--
                        <p align=right>
                        <a href="#week">Weekly</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                        <a href="#month">Monthly</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                        <a href="#quarter">Quarterly</a>
                        </p>
--%>

                        <a name="week"></a>
                        <table width="100%" align="center" border="0" cellpadding="5" cellspacing="2" class="sidebarBox">
                            <tr>
                                <td class=header colspan=7>Weekly Contests</td>
                            </tr>
                            <tr>
                                <td class="sidebarTitle">Contest</td>
                                <td class="sidebarTitle" align=center>Start Date</td>
                                <td class="sidebarTitle" align=center>End Date</td>
                                <td class="sidebarTitle" align=center>Winner</td>
                                <td class="sidebarTitle" align=center>Winner<br/>Submission Date</td>
                                <td class="sidebarTitle" align=center>Score</td>
                                <td class="sidebarTitle" align=right>Contest Earnings</td>
                            </tr>
                            <tr>
                                <td class="sidebarText"><A href="/tc?module=Static&d1=dev&d2=usdc_contest_det">Week 1</A></td>
                                <td class="sidebarText" align=center nowrap=nowrap>06.03.2004 9:00AM</td>
                                <td class="sidebarText" align=center nowrap=nowrap>06.10.2004 9:00AM</td>
                                <td class="sidebarText" align=center>somedude</td>
                                <td class="sidebarText" align=center nowrap=nowrap>06.10.2004 8:59AM</td>
                                <td class="sidebarText" align=center>85.00</td>
                                <td class="sidebarText" align=right>$1,000</td>
                            </tr>
                        </table>
                        
                        <br/>
                    
                        <a name="month"></a>
                        <table width="100%" align="center" border="0" cellpadding="5" cellspacing="2" class="sidebarBox">
                            <tr>
                                <td class=header colspan=7>Monthly Contests</td>
                            </tr>
                            <tr>
                                <td class="sidebarTitle">Contest</td>
                                <td class="sidebarTitle" align=center>Start Date</td>
                                <td class="sidebarTitle" align=center>End Date</td>
                                <td class="sidebarTitle" align=center>Winner</td>
                                <td class="sidebarTitle" align=center>Winner<br/>Submission Date</td>
                                <td class="sidebarTitle" align=center>Score</td>
                                <td class="sidebarTitle" align=right>Contest Earnings</td>
                            </tr>
                            <tr>
                                <td class="sidebarText"><A href="/tc?module=Static&d1=dev&d2=usdc_contest_det">Month 1</A></td>
                                <td class="sidebarText" align=center nowrap=nowrap>06.03.2004 9:00AM</td>
                                <td class="sidebarText" align=center nowrap=nowrap>06.10.2004 9:00AM</td>
                                <td class="sidebarText" align=center>somedude</td>
                                <td class="sidebarText" align=center nowrap=nowrap>06.10.2004 8:59AM</td>
                                <td class="sidebarText" align=center>85.00</td>
                                <td class="sidebarText" align=right>$1,000</td>
                            </tr>
                        </table>

                        <br/>

                        <a name="quarter"></a>
                        <table width="100%" align="center" border="0" cellpadding="5" cellspacing="2" class="sidebarBox">
                            <tr>
                                <td class=header colspan=7>Quarterly Contests</td>
                            </tr>
                            <tr>
                                <td class="sidebarTitle">Contest</td>
                                <td class="sidebarTitle" align=center>Start Date</td>
                                <td class="sidebarTitle" align=center>End Date</td>
                                <td class="sidebarTitle" align=center>Winner</td>
                                <td class="sidebarTitle" align=center>Winner<br/>Submission Date</td>
                                <td class="sidebarTitle" align=center>Score</td>
                                <td class="sidebarTitle" align=right>Contest Earnings</td>
                            </tr>
                            <tr>
                                <td class="sidebarText"><A href="/tc?module=Static&d1=dev&d2=usdc_contest_det">Quarter 1</A></td>
                                <td class="sidebarText" align=center nowrap=nowrap>06.03.2004 9:00AM</td>
                                <td class="sidebarText" align=center nowrap=nowrap>06.10.2004 9:00AM</td>
                                <td class="sidebarText" align=center>somedude</td>
                                <td class="sidebarText" align=center nowrap=nowrap>06.10.2004 8:59AM</td>
                                <td class="sidebarText" align=center>85.00</td>
                                <td class="sidebarText" align=right>$1,000</td>
                            </tr>
                        </table>

        <p><br/></p>

        </td>
<!-- Center Column Ends -->

<!-- Gutter -->
         <td width="15"><img src="/i/clear.gif" width="15" height="1" border="0"></td>
<!-- Gutter Ends -->

<!-- Right Column Begins -->
         <td width="180">
            <jsp:include page="right.jsp"/>
         </td>
<!-- Right Column Ends -->

<!-- Gutter -->
         <td width="2"><img src="/i/clear.gif" width="2" height="1" border="0"></td>
<!-- Gutter Ends -->

    </tr>
</table>

<jsp:include page="../foot.jsp" />

</body>

</html>
