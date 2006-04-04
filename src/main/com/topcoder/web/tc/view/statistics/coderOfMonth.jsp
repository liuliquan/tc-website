<%@ page import="com.topcoder.shared.dataAccess.resultSet.ResultSetContainer,
                 java.util.Map"%>
<%@  page language="java"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>TopCoder Statistics</title>
<%@ taglib uri="tc.tld" prefix="tc" %>
<%@ taglib uri="rsc-taglib.tld" prefix="rsc" %>
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>
<jsp:include page="/style.jsp">
  <jsp:param name="key" value="tc_main"/>
</jsp:include>
<% ResultSetContainer results = (ResultSetContainer)((Map)request.getAttribute("resultMap")).get("com_history"); %>

</head>

<body>

<jsp:include page="../top.jsp" >
    <jsp:param name="level1" value=""/>
</jsp:include>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
   <tr valign="top">
<!-- Left Column Begins-->
      <td width="180">
         <%--or "des_com" or "dev_com"--%>
         <jsp:include page="/includes/global_left.jsp">
            <jsp:param name="node" value="algo_com"/>
         </jsp:include>
      </td>
<!-- Left Column Ends -->

<!-- Center Column Begins -->
      <td width="100%" valign="top" align="center">

<div class="fixedWidthBody">

<jsp:include page="../page_title.jsp" >
<jsp:param name="image" value="statistics_w"/>
<jsp:param name="title" value="Coder of the Month Archive"/>
</jsp:include>

<table class="stat" cellpadding="0" cellspacing="0" width="250" style="float: left; margin-right: 15px; margin-bottom: 15px;">
   <tr>
      <td class="title" colspan="2">Algorithm Coder of the Month</td>
   </tr>
   <tr>
      <td class="header">Handle</td>
      <td class="headerR">Month</td>
   </tr>
   <% boolean even = false; %>
   <rsc:iterator list="<%=results%>" id="resultRow">
       <tr class="<%=even?"dark":"light"%>">
          <td class="value"><tc-webtag:handle coderId='<%=resultRow.getLongItem("coder_id")%>'/></td>
          <td class="valueR"><rsc:item name="achievement_date" row="<%=resultRow%>" format="MM/yyyy"/></td>
       </tr>
       <% even = !even;%>
   </rsc:iterator>
</table>

<span class="bodyText">
<span class="title">Algorithm Coder<br>of the Month</span>
<br><br>
<%--ALGORITHM--%>
TopCoder reserves the title of Coder of the Month for any member who has had an outstanding month of competition. These memebers may have had an exceptionally high rating increase for the month, earned a large amount of winnings, or has had an impressive winning streak.
</span>

</div>
        </td>
<!-- Center Column Ends -->

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

<jsp:include page="../foot.jsp" />

</body>

</html>
