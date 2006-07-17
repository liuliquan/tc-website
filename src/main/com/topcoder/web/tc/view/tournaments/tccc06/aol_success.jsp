<%@  page language="java"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<jsp:include page="/script.jsp" />

<title>2006 TopCoder Collegiate Challenge - Computer Programming Tournament</title>
<link type="text/css" rel="stylesheet" href="/css/TCCC06style.css"/>
</head>
<body>

<!-- Tab barlinks-->
<jsp:include page="links.jsp" >
<jsp:param name="tabLev1" value="overview"/>
<jsp:param name="tabLev2" value="sponsors"/>
<jsp:param name="tabLev3" value="aol"/>
</jsp:include>


<table width="100%" border="0" cellpadding="0" cellspacing="0">
<!-- Body-->
   <tr valign="top">
      <td valign="top" align="center">
      <div class="bodySpacer">
            
<div align="center"><img src="/i/tournament/tccc06/aol_logo.gif" alt="AOL" border="0" /></div>
Your application has been received.
<br><br>
[??] If you would like to be contacted by AOL, please go to AOL's <A href="/?t=sponsor&c=link&link=http://developer.aol.com" target="_blank">http://developer.aol.com</A> page and apply online to register as an applicant. [??]
<br><br><br><br><br><br>

        </div>
      </td>
        
         
<!-- Right Column-->
<td>&#160;</td>
<%--
        <td width="170" align="right">
            <jsp:include page="right.jsp">
            <jsp:param name="level1" value="aol"/>
            </jsp:include>
         </td>
--%>    
   </tr>
   
</table>
   
   


<jsp:include page="../../foot.jsp" />
</body>

</html>
