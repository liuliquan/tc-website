<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../../top.xsl"/>
  <xsl:import href="../../script.xsl"/>
  <xsl:import href="../../includes/body_top.xsl"/>  
  <xsl:import href="../../foot.xsl"/>
  <xsl:import href="../../includes/modules/practice_room.xsl"/>
  <xsl:import href="../../includes/modules/module_login.xsl"/>  
  <xsl:import href="../../includes/modules/calendar.xsl"/>
  <xsl:import href="../../includes/global_left.xsl"/> 
  <xsl:import href="../../includes/public_right_col.xsl"/>     
  <xsl:output indent="no" method="html" doctype-public="-//W3C//DTD HTML 4.0 Transitional//EN"/>
  <xsl:template match="/">

<html>

<head>

<xsl:call-template name="Preload"/>      

<title>TopCoder | Employment Services</title>

<xsl:call-template name="CSS"/>      

<meta name="description" content="TopCoder is a programming tournament site. All members who compete attain a rating that provides a metric for coding competence and potential. These ratings, coupled with tournament performance, can lead to monetary rewards and employment opportunities."/>
<meta name="keywords" content="Computer Jobs, Programming, Programming Jobs, Programming Contest, Programming Competition, Online Games, Coding, Information Technology Jobs, Java, C++"/>

</head>

<body>

<xsl:call-template name="Top"/>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr valign="top">

<!-- Left Column Begins -->
        <td width="180">
            <xsl:call-template name="global_left"/>
        </td>
<!-- Left Column Ends -->

<!-- Gutter Begins -->
        <td width="4"><img src="/i/table_top_fill.gif" width="4" height="26" border="0"/></td>
<!-- Gutter Ends -->

<!-- Center Column Begins -->  
        <td class="bodyText" width="100%">
            <xsl:call-template name="BodyTop">
                <xsl:with-param name="image1">white</xsl:with-param>
                <xsl:with-param name="image">jobs</xsl:with-param>
                <xsl:with-param name="title">TopCoder Employment Services</xsl:with-param>
            </xsl:call-template>

            <table border="0" cellspacing="10" cellpadding="0" width="100%">
            <tr>
                <td class="bodyText" width="100%"><img src="/i/clear.gif" alt="" width="240" height="1" border="0"/><br/>

<!--body contextual links-->
                        <table width="100%" cellpadding="3" cellspacing="0" border="0">
                            <tr><td valign="middle" bgcolor="#43515E" class="statText"><b>&#160;PayPal Jobs</b></td></tr>
                            <tr><td valign="middle" class="bodyText"></td></tr>
                        </table>

<!-- Client Job List begins -->
                        <p><A href="/?&amp;t=tces&amp;c=paypal" class="bodyText"><img src="/i/es/paypal/paypal_logo.gif" width="150" height="50" alt="PayPal" border="0" /></A></p>

                        <p><h3>Software Engineer International</h3></p>
                        
                        <p><strong>Primary Job Responsibilities</strong><br> 
                        The International Team is looking for talented professionals who want to work with the best and the brightest to build a service used by 
                        millions each month. Join us and help build a dependable, scalable and enduring architecture that will enable us to deploy our payments 
                        platform to people in every country around the world.
                        </br>
                        </p>
                        
                        <p><strong>Job Requirements</strong></p>
                        <p>Exceptional software engineers with primary strengths in C++, SQL, (Oracle), and dependable software engineering practices. 
                        Familiarity with HTML, CGI, character set support and encoding schemes (UTF-8 and Latin-1), localization, banking systems and 
                        finance are a plus. You must be a strong communicator, both written and oral. You must be willing to take on difficult projects and 
                        work proactively with others to define requirements while remaining aware of established procedures so that work is not duplicated 
                        due to overzealousness. You must have a balance in all things.</p>               
                        
                        <p><A href=" /jobposting?&amp;t=JobHitTask&amp;jid=178&amp;jt=2" class="bodyText">Apply now!</A></p>
                        <p><A href="/?&amp;t=tces&amp;c=paypal_openings&amp;a=secure" class="bodyText">Back To Jobs</A></p>

<!-- Client Job List ends -->

                        <p><br/></p>
                        
                    </td>
                </tr>
            </table>
        </td>
<!-- Center Column Ends -->

<!-- Gutter -->
        <td width="4"><img src="/i/clear.gif" width="4" height="1" border="0"/></td>
<!-- Gutter Ends -->

<!-- Right Column Begins -->
        <td width="170"><img src="/i/clear.gif" width="170" height="1" border="0"/><br/>
            <xsl:call-template name="public_right_col"/>       
        </td>
<!-- Right Column Ends -->

<!-- Gutter -->
        <td width="10" bgcolor="#FFFFFF"><img src="/i/clear.gif" width="10" height="1" border="0"/></td>
<!-- Gutter Ends -->
    </tr>
</table>


<xsl:call-template name="Foot"/>

</body>

</html>

  </xsl:template>
</xsl:stylesheet>

