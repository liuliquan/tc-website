<%@ page import="com.topcoder.shared.util.ApplicationServer" %>
<%@ page language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>TopCoder - Help</title>

    <jsp:include page="../script.jsp"/>
    <jsp:include page="/style.jsp">
        <jsp:param name="key" value="tc_main"/>
    </jsp:include>

</head>

<body>

<jsp:include page="../top.jsp">
    <jsp:param name="level1" value=""/>
</jsp:include>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr valign="top">
<!-- Left Column Begins-->
<td width="180">
    <jsp:include page="/includes/global_left.jsp">
        <jsp:param name="node" value="algo_how_to_compete"/>
    </jsp:include>
</td>
<!-- Left Column Ends -->

<!-- Gutter Begins -->
<td width="15"><img src="/i/clear.gif" width="15" height="1" border="0"/></td>
<!-- Gutter Ends -->

<!-- Center Column Begins -->
<td width="100%" align="left" class="bodyText">
<jsp:include page="../page_title.jsp">
    <jsp:param name="image" value="alg_support_faqs"/>
    <jsp:param name="title" value="TopCoder Data Feeds"/>
</jsp:include>

<h2>TopCoder Data Feeds</h2>

<p>
    TopCoder provides access to some of it's data in the form of XML. Below you will find a
    listing of the available feeds. Please keep in mind that none of the feeds provide ordered data.
</p>

<p><span class="bodySubtitle">Coder List</span><br/>
    This feed provides a list of coders who have competed in Algorithm, Development or Design competitions.
    It includes the following fields:
    <ul>
        <li>user id</li>
        <li>handle</li>
        <li>algorithm rating</li>
        <li>algorithm volatility</li>
        <li>number of rated algorithm events</li>
        <li>design rating</li>
        <li>design volatility</li>
        <li>number of rated design events</li>
        <li>development rating</li>
        <li>development volatility</li>
        <li>number of rated development events</li>
    </ul>

    http://<%=ApplicationServer.SERVER_NAME%>/tc?module=BasicData&amp;c=dd_coder_list
</p>

<p><span class="bodySubtitle">Active Algorithm Coder List</span><br/>
    This feed provides a list of coders who have been rated in an algorithm competition within the last 180 days.
    It includes the following fields:
    <ul>
        <li>user id</li>
        <li>handle</li>
        <li>algorithm rating</li>
        <li>algorithm volatility</li>
        <li>number of rated algorithm events</li>
    </ul>

    http://<%=ApplicationServer.SERVER_NAME%>/tc?module=BasicData&amp;c=dd_active_algorithm_list
</p>

<p><span class="bodySubtitle">Active Designer List</span><br/>
    This feed provides a list of coders who have been rated in design within the last 180 days.
    It includes the following fields:
    <ul>
        <li>user id</li>
        <li>handle</li>
        <li>design rating</li>
        <li>design volatility</li>
        <li>number of rated design events</li>
    </ul>

    http://<%=ApplicationServer.SERVER_NAME%>/tc?module=BasicData&amp;c=dd_active_design_list
</p>

<p><span class="bodySubtitle">Active Developer List</span><br/>
    This feed provides a list of coders who have been rated in development within the last 180 days.
    It includes the following fields:
    <ul>
        <li>user id</li>
        <li>handle</li>
        <li>development rating</li>
        <li>development volatility</li>
        <li>number of rated development events</li>
    </ul>

    http://<%=ApplicationServer.SERVER_NAME%>/tc?module=BasicData&amp;c=dd_active_developer_list
</p>

<p><span class="bodySubtitle">Round Results</span><br/>
    This feed provides details about all the competitors in an algorithm round.
    It includes the following fields:
    <ul>
        <li>room id</li>
        <li>room_name</li>
        <li>user id</li>
        <li>handle</li>
        <li>prize</li>
        <li>old rating</li>
        <li>new rating</li>
        <li>new volatility</li>
        <li>num ratings</li>
        <li>room placed</li>
        <li>division placed</li>
        <li>advanced (Y or N)</li>
        <li>challengepoints</li>
        <li>system test points</li>
        <li>defense points</li>
        <li>submission points</li>
        <li>final points</li>
        <li>division</li>
        <li>problems presented</li>
        <li>problems submitted</li>
        <li>problems correct</li>
        <li>problems failed by system test</li>
        <li>problems failed by challenge</li>
        <li>problems opened</li>
        <li>problems left open</li>
        <li>challenge attempts made</li>
        <li>challenges made successful</li>
        <li>challenges made failed</li>
        <li>challenge attempts received</li>
        <li>challenges received successful</li>
        <li>challenges received failed</li>
        <li>rated flag (1 or 0)</li>
        <li>level one submission points</li>
        <li>level one final points</li>
        <li>level one status</li>
        <li>level one time elapsed</li>
        <li>level one placed</li>
        <li>level one language</li>
        <li>level two submission points</li>
        <li>level two final points</li>
        <li>level two status</li>
        <li>level two time elapsed</li>
        <li>level two placed</li>
        <li>level two language</li>
        <li>level three submission points</li>
        <li>level three final points</li>
        <li>level three status</li>
        <li>level three time elapsed</li>
        <li>level three placed</li>
        <li>level three language</li>
    </ul>
    http://<%=ApplicationServer.SERVER_NAME%>/tc?module=BasicData&amp;c=dd_round_results&amp;rd=ROUND_ID
    <br/>
    You will need to replace "ROUND_ID" in the query string to get data about a particular round.

</p>

<p><span class="bodySubtitle">Algorithm Rating History</span><br/>
    This feed provides data about the algorithm rating history for a particular competitor.
    It includes the following fields:
    <ul>
        <li>handle</li>
        <li>user id</li>
        <li>round id</li>
        <li>round name</li>
        <li>date</li>
        <li>old rating</li>
        <li>new rating</li>
        <li>volatility</li>
        <li>rank</li>
    </ul>

    http://<%=ApplicationServer.SERVER_NAME%>/tc?module=BasicData&amp;c=dd_rating_history&amp;cr=USER_ID
    <br/>
    You will need to replace "USER_ID" in the query string to get data about a particular competitor.
</p>

<p><span class="bodySubtitle">Round List</span><br/>
    This feed provides a list of algorithm rounds.
    <ul>
        <li>round id</li>
        <li>full name</li>
        <li>short name</li>
        <li>round type</li>
        <li>date</li>
    </ul>
    http://<%=ApplicationServer.SERVER_NAME%>/tc?module=BasicData&amp;c=dd_round_list
</p>

<p><span class="bodySubtitle">Design Rating History</span><br/>
    This feed provides data about the design rating history for a particular competitor.
    It includes the following fields:
    <ul>
        <li>handle</li>
        <li>user id</li>
        <li>project id</li>
        <li>component name</li>
        <li>catalog</li>
        <li>posting date</li>
        <li>submit by date</li>
        <li>final score</li>
        <li>submit date</li>
        <li>payment</li>
        <li>placed</li>
        <li>old rating</li>
        <li>new rating</li>
        <li>rating date</li>
    </ul>

    http://<%=ApplicationServer.SERVER_NAME%>/tc?module=BasicData&amp;c=dd_design_rating_history&amp;cr=USER_ID
    <br/>
    You will need to replace "USER_ID" in the query string to get data about a particular competitor.
</p>

<p><span class="bodySubtitle">Development Rating History</span><br/>
    This feed provides data about the development rating history for a particular competitor.
    It includes the following fields:
    <ul>
        <li>handle</li>
        <li>user id</li>
        <li>project id</li>
        <li>component name</li>
        <li>catalog</li>
        <li>posting date</li>
        <li>submit by date</li>
        <li>final score</li>
        <li>submit date</li>
        <li>payment</li>
        <li>placed</li>
        <li>old rating</li>
        <li>new rating</li>
        <li>rating date</li>
    </ul>
    http://<%=ApplicationServer.SERVER_NAME%>/tc?module=BasicData&amp;c=dd_development_rating_history&amp;cr=CODER_ID
    <br/>
    You will need to replace "USER_ID" in the query string to get data about a particular competitor.

</p>


<p><span class="bodySubtitle">High School Rating History</span><br/>
    This feed provides data about the high school rating history for a particular competitor.
    It includes the following fields:
    <ul>
        <li>handle</li>
        <li>user id</li>
        <li>round id</li>
        <li>round name</li>
        <li>date</li>
        <li>old rating</li>
        <li>new rating</li>
        <li>volatility</li>
        <li>rank</li>
    </ul>

    http://<%=ApplicationServer.SERVER_NAME%>/tc?module=BasicData&amp;c=dd_hs_rating_history&amp;cr=USER_ID
    <br/>
    You will need to replace "USER_ID" in the query string to get data about a particular competitor.
</p>


<%--
<p><span class="bodySubtitle">Marathon Round Results</span><br/>
    This feed provides data about the results of a Marathon Match.
    It includes the following fields:
<ul>
    <li>round id</li>
    <li>user id</li>
    <li>handle</li>
    <li>point total</li>
    <li>system point total</li>
    <li>number of submissions</li>
    <li>attended (Y or N)</li>
    </ul>
    http://<%=ApplicationServer.SERVER_NAME%>/tc?module=BasicData&amp;c=dd_development_rating_history&amp;cr=user_ID
    <br />
    You will need to replace "USER_ID" in the query string to get data about a particular competitor.

</p>
--%>

<p><br/></p>
</td>
<!-- Center Column Ends -->

<!-- Gutter -->
<td width="15"><img src="/i/clear.gif" width="15" height="1" border="0"></td>
<!-- Gutter Ends -->

<!-- Right Column Begins -->
<td width="170">
    <jsp:include page="../public_right.jsp">
        <jsp:param name="level1" value="privatelabel"/>
    </jsp:include>
</td>
<!-- Right Column Ends -->

<!-- Gutter -->
<td width="10"><img src="/i/clear.gif" width="10" height="1" border="0"></td>
<!-- Gutter Ends -->
</tr>
</table>

<jsp:include page="../foot.jsp"/>

</body>

</html>
