<%@ page import="com.topcoder.shared.util.ApplicationServer"%>
<%@  page language="java"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>2004 TopCoder Collegiate Challenge - Computer Programming Tournament - Design</title>

<jsp:include page="../../script.jsp" />

<link type="text/css" rel="stylesheet" href="/css/TCCC04style.css"/>
    
</head>

<body>

<jsp:include page="../../top.jsp" >
    <jsp:param name="level1" value=""/>
</jsp:include>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
   <tr valign="top">
<!-- Left Column Begins-->
        <td width="180">
            <jsp:include page="../../includes/global_left.jsp">
                <jsp:param name="level1" value="events"/>
                <jsp:param name="level2" value="tournaments"/>
            </jsp:include>
        </td>
<!-- Left Column Ends -->

<!-- Gutter Begins -->
        <td width="15"><img src="/i/clear.gif" width="15" height="1" border="0"/></td>
<!-- Gutter Ends -->

<!-- Center Column Begins -->
         <td class="bodyText" WIDTH="100%">

<jsp:include page="tccc04Head.jsp" />

<!-- Tab bar links-->
<jsp:include page="tccc04links.jsp" >
   <jsp:param name="tabLev1" value="component"/>
   <jsp:param name="tabLev2" value="development"/>
   <jsp:param name="tabLev3" value="round1"/>
</jsp:include> 

            <h2>Development Round 1</h2>

<!-- Design Winners Begins -->

            <table border="0" cellspacing="0" cellpadding="3" width="450" align="center" class="formFrame">
                <tr valign="middle">
                    <td class="advTitle" colspan="2">Development Participants</td>
                </tr>
                <tr valign="middle">
                    <td class="advHeader" width="20%" align="left">Handle</td>
                    <td class="advHeader" width="60%" align="right">Score</td>
                </tr>

                <tr valign="middle">
                    <td class="advCell" align="left"><a href="/stat?c=member_profile&amp;cr=277356">aksonov</a></td>
                    <td class="advCell" align="right">pending</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell" align="left"><a href="/stat?c=member_profile&amp;cr=284038">aussie</a></td>
                    <td class="advCell" align="right">pending</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell" align="left"><a href="/stat?c=member_profile&amp;cr=290448">BryanChen</a></td>
                    <td class="advCell" align="right">pending</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell" align="left"><a href="/stat?c=member_profile&amp;cr=268851">gladius</a></td>
                    <td class="advCell" align="right">pending</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell" align="left"><a href="/stat?c=member_profile&amp;cr=151920">Khristopher</a></td>
                    <td class="advCell" align="right">pending</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell" align="left"><a href="/stat?c=member_profile&amp;cr=7496435">loveislife</a></td>
                    <td class="advCell" align="right">pending</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell" align="left"><a href="/stat?c=member_profile&amp;cr=7512490">petko</a></td>
                    <td class="advCell" align="right">pending</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell" align="left"><a href="/stat?c=member_profile&amp;cr=153089">preben</a></td>
                    <td class="advCell" align="right">pending</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell" align="left"><a href="/stat?c=member_profile&amp;cr=7389864">roma</a></td>
                    <td class="advCell" align="right">pending</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell" align="left"><a href="/stat?c=member_profile&amp;cr=344462">RRLevering</a></td>
                    <td class="advCell" align="right">pending</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell" align="left"><a href="/stat?c=member_profile&amp;cr=304979">sinaddcos</a></td>
                    <td class="advCell" align="right">pending</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell" align="left"><a href="/stat?c=member_profile&amp;cr=310233">Standlove</a></td>
                    <td class="advCell" align="right">pending</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell" align="left"><a href="/stat?c=member_profile&amp;cr=309786">Yi_Zhang</a></td>
                    <td class="advCell" align="right">pending</td>
                </tr>

<%--
					<tr valign="middle"><td background="/i/graybv_bg.gif" class="statTextLarge" width="20%" align="left" colspan="4">*the average of the two highest scores, including at least one level II score</td></tr>
--%>
            </table>

           <br/><br/>

            <table border="0" cellspacing="0" cellpadding="3" width="450" align="center" class="formFrame">
                <tr valign="middle">
                    <td class="projectTitles"colspan="6">Project Submissions</td>
                </tr>
                <tr valign="middle">
                    <td class="advHeader" width="35%">Project Name</td>
                    <td class="advHeader" width="15" align="center">Total<br/>Submissions</td>
                    <td class="advHeader" width="15%" align="center">Place</td>
                    <td class="advHeader" width="20%">Submitter(s)</td>
                    <td class="advHeader" width="15%" align="center">Board<br/>Score</td>
                    <td class="advHeader" width="10%" align="right">Multiplier</td>
                </tr>

                <tr valign="middle">
                    <td class="advCell"><a href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>/catalog/c_component.jsp?comp=6707859" target="_blank">Base64 Codec</a></td>
                    <td class="advCell" align="center">3</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=153089">preben</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center">&#160;</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell">&#160;</td>
                    <td class="advCell">&#160;</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=7389864">roma</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center">&#160;</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell">&#160;</td>
                    <td class="advCell">&#160;</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=310233">Standlove</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center"><img src="/i/development/multiplierLGray.gif" border="0"/></td>
                </tr>
                <tr valign="middle">
                    <td class="advCell"><a href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>/catalog/c_component.jsp?comp=7381375" target="_blank">File Delta</a></td>
                    <td class="advCell" align="center">1</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=268851">gladius</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center"><img src="/i/development/multiplierLGray.gif" border="0"/></td>
                </tr>
                <tr valign="middle">
                    <td class="advCell"><a href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>/catalog/c_component.jsp?comp=7411534" target="_blank">Performance Oriented Thread Pool</a></td>
                    <td class="advCell" align="center">4</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=290448">BryanChen</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center">&#160;</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell">&#160;</td>
                    <td class="advCell">&#160;</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=151920">Khristopher</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center"><img src="/i/development/multiplierLGray.gif" border="0"/></td>
                </tr>
                <tr valign="middle">
                    <td class="advCell">&#160;</td>
                    <td class="advCell">&#160;</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=7496435">loveislife</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center">&#160;</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell">&#160;</td>
                    <td class="advCell">&#160;</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=310233">Standlove</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center">&#160;</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell"><a href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>/catalog/c_component.jsp?comp=8403457" target="_blank">Sort Utility</a></td>
                    <td class="advCell" align="center">4</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=277356">aksonov</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center">&#160;</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell">&#160;</td>
                    <td class="advCell">&#160;</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=284038">aussie</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center">&#160;</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell">&#160;</td>
                    <td class="advCell">&#160;</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=7512490">petko</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center">&#160;</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell">&#160;</td>
                    <td class="advCell">&#160;</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=304979">sinaddcos</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center"><img src="/i/development/multiplierLGray.gif" border="0"/></td>
                </tr>
                <tr valign="middle">
                    <td class="advCell"><a href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>/catalog/c_component.jsp?comp=6601794" target="_blank">String Distance</a></td>
                    <td class="advCell" align="center">3</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=344462">RRLevering</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center">&#160;</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell">&#160;</td>
                    <td class="advCell">&#160;</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=310233">Standlove</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center">&#160;</td>
                </tr>
                <tr valign="middle">
                    <td class="advCell">&#160;</td>
                    <td class="advCell">&#160;</td>
                    <td class="advCell" align="center"></td>
                    <td class="advCell"><a href="/stat?c=member_profile&amp;cr=309786">Yi_Zhang</a></td>
                    <td class="advCell" align="center">pending</td>
                    <td class="advCell" align="center"><img src="/i/development/multiplierLGray.gif" border="0"/></td>
                </tr>

            </table>
         <p><br/></p>
         </td>
<!-- Center Column Ends -->

<!-- Gutter -->
         <td width="15"><img src="/i/clear.gif" width="15" height="1" border="0"></td>
<!-- Gutter Ends -->

<!-- Right Column Begins -->
         <td width="170">
            <jsp:include page="../../public_right.jsp">
               <jsp:param name="level1" value="privatelabel"/>
            </jsp:include>
         </td>
<!-- Right Column Ends -->

<!-- Gutter -->
         <td width="10"><img src="/i/clear.gif" width="10" height="1" border="0"></td>
<!-- Gutter Ends -->
    </tr>
</table>

<jsp:include page="../../foot.jsp" />

</body>

</html>
