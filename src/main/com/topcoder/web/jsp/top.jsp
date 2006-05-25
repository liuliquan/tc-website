<%@  page
  language="java"
  import="java.text.DecimalFormat,
          com.topcoder.shared.util.ApplicationServer" %>
<%@ page import="com.topcoder.web.common.SessionInfo"%>
<%@ page import="com.topcoder.web.common.BaseServlet"%>
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>
<%
    SessionInfo sessionInfo = (SessionInfo)request.getAttribute(BaseServlet.SESSION_INFO_KEY);
    String level1 = request.getParameter("level1")==null?"competition":request.getParameter("level1");

%>
<script language="javascript" type="text/javascript">
<!--
var objPopUp = null;
function popUpUnder(event,objectID){
   objPopTrig = document.getElementById(event);
   alert(objPopTrig);
   objPopUp = document.getElementById(objectID);
   xPos = objPopTrig.offsetLeft;
   if(xPos + objPopUp.offsetWidth > document.body.clientWidth) xPos = xPos - objPopUp.offsetWidth;
   objPopUp.style.left = xPos + 'px';
   objPopUp.style.display = 'block';
}
function popDescription(objectID){
   objPopUp = document.getElementById(objectID);
   objPopUp.style.visibility = 'visible';
//   objPopUp.style.display = 'block';
}
function hideDescription(){
   objPopUp.style.visibility = 'hidden';
//   objPopUp.style.display = 'none';
   objPopUp = null;
}

// -->
</script>
<STYLE TYPE="text/css">
div.topBar, div.topBar div, div.memberCountBox
{
color: #FFFFFF;
font-size: 11px;
}
div.memberCountBox
{
position:absolute;
top:5;
left:3;
z-index:1;
}
div.topBar
{
background: #FFFFFF url(/i/interface/top_bg.gif) top center repeat-x;
vertical-align: top;
padding: 5px 10px 80px 3px;
white-space: nowrap;
}
div.launchPopUp
{
font-size: 11px;
background-color: #FFFFCC;
visibility: hidden;
position: absolute;
padding: 3px 5px 3px 5px;
border: solid 1px black;
font-weight:bold;
z-index: 3;
}
#outerLogo
{
width: 360px;
position: relative;
z-index: 2;
}
#innerLogo
{
position: absolute;
left: 0px;
}
</STYLE>

<%----------LAUNCH BAR-------------%>
<div id="launch0" class="launchPopUp" style="left:73;top:65;">Competitions Home</div>
<div id="launch1" class="launchPopUp" style="left:108;top:65;">Launch Algorithm Competitions Arena</div>
<div id="launch2" class="launchPopUp" style="left:155;top:65;">Launch High School Competitions Arena</div>
<div id="launch3" class="launchPopUp" style="left:181;top:65;">Component Design Active Contests</div>
<div id="launch4" class="launchPopUp" style="left:207;top:65;">Component Development Active Contests</div>
<div id="launch5" class="launchPopUp" style="left:252;top:65;">Marathon Match Active Contests</div>
<map name="competeBar">
<area shape="rect" alt="" coords="0,0,66,30" href="http://<%=ApplicationServer.SERVER_NAME%>/tc" onmouseover="popDescription('launch0')" onmouseout="hideDescription()" />
<area shape="rect" alt="" coords="68,0,106,30" href="javascript:arena();" onmouseover="popDescription('launch1')" onmouseout="hideDescription()" />
<area shape="rect" alt="" coords="107,0,153,30" href="javascript:arena();" onmouseover="popDescription('launch2')" onmouseout="hideDescription()" />
<area shape="rect" alt="" coords="154,0,179,30" href="http://<%=ApplicationServer.SERVER_NAME%>/tc?module=ViewActiveContests&ph=112" onmouseover="popDescription('launch3')" onmouseout="hideDescription()" />
<area shape="rect" alt="" coords="180,0,205,30" href="http://<%=ApplicationServer.SERVER_NAME%>/tc?module=ViewActiveContests&ph=113" onmouseover="popDescription('launch4')" onmouseout="hideDescription()" />
<area shape="rect" alt="" coords="206,0,250,30" href="http://<%=ApplicationServer.SERVER_NAME%>/longcontest/?module=ViewActiveContests" onmouseover="popDescription('launch5')" onmouseout="hideDescription()" />
</map>
<%---------------------------------%>

<div id="register_now_container" style="position:absolute; left:0; top:31px; width:100%;">
   <div style="position:absolute; left:0px; top:0px;">
   <img src="/i/interface/competeBar.gif" alt="" usemap="#competeBar"/>
   </div>
   <% if ( !sessionInfo.isAnonymous() ) { %>
   <div style="float:right; width:775px;" align="right"><A href="http://<%=ApplicationServer.SERVER_NAME%>/reg/?nrg=false"><img src="/i/interface/update_my_profile.gif" alt="Update My Profile" style="display:block;"/></A></div>
   <% } else { %>
   <div style="float:right; width:775px;" align="right"><A href="http://<%=ApplicationServer.SERVER_NAME%>/reg/"><img src="/i/interface/register_now.gif" alt="Register Now" style="display:block;"/></A></div>
   <%}%>
</div>
<%--
--%>

<div align="center" style="margin: 0px 290px 0px 280px;">
   <div id="outerLogo">
      <div id="innerLogo">
      <A href="http://<%=ApplicationServer.SERVER_NAME%>/"><img src="/i/interface/topcoder.gif" alt="TopCoder" /></A>
      </div>
   </div>
</div>

<div class="memberCountBox">
Member Count: <%=new DecimalFormat("#,##0").format(sessionInfo.getMemberCount())%> - <jsp:include page="/date_time.jsp" />
&#160;<a class="gMetal" href="Javascript:tcTime()">[Get Time]</a>
</div>

<div class="topBar">
   <div style="float: right; margin-left: 650px;">
   <% if ( !sessionInfo.isAnonymous() ) { %>
       Hello,&#160;<tc-webtag:handle coderId='<%=sessionInfo.getUserId()%>' darkBG="true" />
      <% if (level1.equals("long")) { %>
               &#160;&#160;|&#160;&#160;<a class="gMetal" href="http://<%=ApplicationServer.SERVER_NAME%>/longcontest/?module=Logout">Logout</a>
      <% } else { %>
               &#160;&#160;|&#160;&#160;<a class="gMetal" href="http://<%=ApplicationServer.SERVER_NAME%>/tc?module=Logout">Logout</a>
      <% } %>
   <% } else {
       if (level1.equals("long")) {%>
               <a class="gMetal" href="http://<%=ApplicationServer.SERVER_NAME%>/longcontest/?module=Login">Login</a>
      <% } else { %>
               <a class="gMetal" href="http://<%=ApplicationServer.SERVER_NAME%>/tc?&module=Login">Login</a>
      <% } %>
   <%}%>
   </div>
</div>
