<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:import href="../top.xsl"/>
    <xsl:import href="../script.xsl"/>
    <xsl:import href="../includes/body_top.xsl"/>
    <xsl:import href="../foot.xsl"/>
    <xsl:import href="../includes/modules/stats_intro.xsl"/>
    <xsl:import href="../includes/global_left.xsl"/>
    <xsl:import href="../includes/dev/public_dev_right.xsl"/>
    <xsl:output indent="no" method="html" doctype-public="-//W3C//DTD HTML 4.0 Transitional//EN"/>
    <xsl:template match="/">

        <html>

            <head>

                <xsl:call-template name="Preload"/>

                <title>Seat Service Shell Team Application Project at TopCoder</title>

                <xsl:call-template name="CSS"/>

                <meta name="description" content="TopCoder is a programming tournament site. All members who compete attain a rating that provides a metric for coding competence and potential. These ratings, coupled with tournament performance, can lead to monetary rewards and employment opportunities."/>
                <meta name="keywords" content="Computer Jobs, Programming, Programming Jobs, Programming Contest, Programming Competition, Online Games, Coding, Information Technology Jobs, Java, C++"/>

            </head>

            <body>

                <!-- Header Begins -->
                <xsl:call-template name="Top">
                    <xsl:with-param name="level1">development</xsl:with-param>
                </xsl:call-template>
                <!-- Header Ends -->

                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr valign="top">

                        <!-- Left Column Begins -->
                        <td width="180">
                            <xsl:call-template name="global_left">
                                <xsl:with-param name="level1">development</xsl:with-param>
                                <xsl:with-param name="level2">applications</xsl:with-param>
                                <xsl:with-param name="level3">app_projects</xsl:with-param>
                            </xsl:call-template>
                        </td>
                        <!-- Left Column Ends -->

                        <!-- Gutter Begins -->
                        <td width="15" valign="top">
                            <img src="/i/clear.gif" width="15" height="5" alt="" border="0"/>
                        </td>
                        <!-- Gutter Ends -->

                        <!-- Center Column Begins -->
                        <td class="bodyText" width="99%" valign="top">

                            <img src="/i/clear.gif" alt="" width="1" height="20" border="0"/>
                            <br/>

                            <xsl:variable name='month' select='/TC/DEVELOPMENT/month'/>
                            <xsl:variable name='day' select='/TC/DEVELOPMENT/day'/>
                            <xsl:variable name='year' select='/TC/DEVELOPMENT/year'/>

                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tr valign="top">
                                    <td class="bodyText" width="100%">
                                        <img src="/i/clear.gif" alt="" width="240" height="1" border="0"/>
                                        <br/>

                                        <!-- Title -->
                                        <table cellspacing="0" class="formFrame" align="center" width="530">
                                            <tr>
                                                <td class="projectTitles" nowrap="nowrap">Team Application Project - Seat Service Shell Application</td>
                                            </tr>
                                            <tr>
                                                <td class="projectHeaders" align="left">Overview</td>
                                            </tr>
                                        </table>

                                        <img src="/i/clear.gif" alt="" width="1" height="10" border="0"/>
                                        <br/>

                                        <table border="0" cellspacing="0" cellpadding="0" align="center" width="530">
                                            <tr valign="top">
                                                <td class="bodyText">
                                                    <!-- Overview -->
                                                    <!-- Overview -->
                                                    <p>
                                                        The seat service is broken up in to multiple modules for design.  The Seat Service Shell
                                                        module receives and parses all consumer XML requests and then makes the appropriate call
                                                        to either the Scheduling module or Admin module to execute business logic.  When the call
                                                        returns, the Shell module constructs an XML response and sends it to the consumer.  The
                                                        Scheduling module handles all core business logic related to scheduling functionality.  The
                                                        Admin module handles all core business logic related to inventory management (list, retrieve,
                                                        add, update, delete).  The final module is the Seat Service Persistence module.  The Persistence
                                                        layer handles all database transactions for both scheduling and inventory management.
                                                    </p>
                                                    <p>
                                                        <strong>Business Requirement Specification </strong>
                                                        <br/>
                                                        View the
                                                        <a target="_new" class="bodyText" href="/i/development/downloads/Seat_Service_Shell_Spec.pdf">Requirement Specification</a> for this application project.<br/>
                                                        View the
                                                        <a target="_new" class="bodyText" href="/i/development/downloads/Seat_Service_Data_Classes_Spec.pdf">Requirement Specification</a> for the Seat Service Data Classes application project.<br/>
                                                        View the
                                                        <a target="_new" class="bodyText" href="/i/development/downloads/Seat_Service_Scheduling_Spec.pdf">Requirement Specification</a> for the Seat Service Scheduling application project.<br/>
                                                        View the
                                                        <a target="_new" class="bodyText" href="/i/development/downloads/Seat_Service_Inventory_Spec.pdf">Requirement Specification</a> for the Seat Service Inventory application project.<br/>
                                                    </p>


                                                    <!-- Technologies -->
                                                    <p class="noSpListTitle">
                                                        <strong>Technical Architecture Requirements</strong>
                                                    </p>
                                                    <ul class="noSpList">
                                                        <li>.NET 1.1</li>
                                                        <li>C#</li>
                                                        <li>MicroSoft SQL Server 2000</li>
                                                    </ul>

                                                    <!-- Payment -->

                                                    <table cellspacing="0" class="formFrame" align="center" width="530">
                                                        <tr>
                                                            <td class="projectHeaders" align="left">Payment</td>
                                                        </tr>
                                                    </table>
                                                    <p>

                                                        For each team application project, TopCoder will compensate the team with the winning solution
                                                        as well as the second place team. In order for a team to be paid, the team's submission must
                                                        pass the minimum screening criteria.
                                                        <br/>
                                                        <br/>
                                                        <p>
                                                            <strong>Winning Application Team</strong>
                                                            <br/>
                                                            Payment: $9,000
                                                            <br/>
                                                        </p>
                                                        <p>
                                                            <strong>Second Place Application Team</strong>
                                                            <br/>
                                                            Payment: $6,000
                                                            <br/>
                                                        </p>
                                                        <p>
                                                            Total: $15,000
                                                        </p>
                                                        <br/>
                                                        All payments will be subject to any prize penalties that were assessed by a team during the
                                                        application design and development process.  Any payments will be sent upon project completion*.
                                                        Payments will be divided evenly between the two named team members and sent separately.

                                                    </p>

                                                    <!-- Definition of Completion -->

                                                    <p class="noSpListTitle">
                                                        <strong>Project Completion</strong>
                                                        <br/>
                                                        *Completion of the project is defined as follows:
                                                    </p>

                                                    <ul class="noSpList">
                                                        <li>The Submission has been selected by TopCoder and a TopCoder review board member as the winning submission.</li>
                                                        <li>Application launch into production environment.</li>
                                                    </ul>

                                                    <!-- Eligibility Requirements -->
                                                    <table cellspacing="0" class="formFrame" align="center" width="530">
                                                        <tr>
                                                            <td class="projectHeaders" align="left">Eligibility</td>
                                                        </tr>
                                                    </table>
                                                    <p class="noSpListTitle">
                                                        You must be a rated TopCoder member, at least 18 years of age, meeting all of the membership
                                                        requirements and fit into one of the following categories:
                                                    </p>

                                                    <ul class="noSpList">
                                                        <li>A US Citizen. </li>
                                                        <li>A Lawful Permanent Resident of the US.</li>
                                                        <li>A temporary resident, asylee, refugee, or have a lawfully issued work authorization card permitting unrestricted employment.</li>
                                                        <li>A Non-US Citizen working in your country of residence.</li>
                                                    </ul>

                                                    <!-- Timeline -->
                                                    <table cellspacing="0" class="formFrame" align="center" width="530">
                                                        <tr>
                                                            <td class="projectHeaders" align="left">Timeline</td>
                                                        </tr>
                                                    </table>
                                                    <p>
                                                        All Submissions must be submitted on time. All questions submitted
                                                        with more than 24 hours before a due date will be answered.
                                                    </p>

                                                    <table class="bodyText" cellspacing="0" cellpadding="0" border="0" width="400">
                                                        <tr>
                                                            <td class="bodyText" nowrap="nowrap">Team Application Project Posting:</td>
                                                            <td class="bodyText" nowrap="nowrap" align="left">10.20.2004</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bodyText" nowrap="nowrap">Register By:</td>
                                                            <td class="bodyText" nowrap="nowrap" align="left">10.22.2004 &#160;&#160;5:00 PM ET</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bodyText" nowrap="nowrap">Proposal Submission:</td>
                                                            <td class="bodyText" nowrap="nowrap" align="left">10.29.2004 &#160;&#160;9:00 AM ET</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bodyText" nowrap="nowrap">Teams Chosen:</td>
                                                            <td class="bodyText" nowrap="nowrap" align="left">10.29.2004 &#160;&#160;5:00 PM ET</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bodyText" nowrap="nowrap">Remaining Design Begins:</td>
                                                            <td class="bodyText" nowrap="nowrap" align="left">10.29.2004 &#160;&#160;5:00 PM ET</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bodyText" nowrap="nowrap">Complete Design Due:</td>
                                                            <td class="bodyText" nowrap="nowrap" align="left">11.08.2004 &#160;&#160;9:00 AM ET</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bodyText" nowrap="nowrap">Development Checkpoint:</td>
                                                            <td class="bodyText" nowrap="nowrap" align="left">11.15.2004 &#160;&#160;9:00 AM ET</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bodyText" nowrap="nowrap">Final Application Submission Due:</td>
                                                            <td class="bodyText" nowrap="nowrap" align="left">11.22.2004 &#160;&#160;9:00 AM ET</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bodyText" nowrap="nowrap">Winner Selected:</td>
                                                            <td class="bodyText" nowrap="nowrap" align="left">11.26.2004 &#160;&#160;5:00 PM ET</td>
                                                        </tr>
                                                    </table>
                                                    <!-- Register at TCS -->
                                                    <p>
                                                        <a name="requirementspecification"></a>
                                                        <strong>Document and Templates </strong>
                                                        <br/>
                                                        View the <a target="_new" class="bodyText" href="/tc?module=Static&amp;d1=dev&amp;d2=support&amp;d3=appDocumentation">Documents and Templates</a> for the Application Development Methodology

                                                    </p>

                                                    <p>
                                                        <strong> Registration </strong>
                                                        <br/>
                                                        Click <a href="/index?t=development&amp;c=tcs_team_app_inquire&amp;Project=Seat%20Service%20Shell">here</a> to obtain the information necessary to submit a solution.
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>

                                        <p>
                                            <br/>
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <!-- Center Column Ends -->

                        <!-- Gutter begins -->
                        <td width="15">
                            <img src="/i/clear.gif" width="15" height="5" alt="" border="0"/>
                        </td>
                        <!-- Gutter Ends -->

                        <!-- Right Column Begins -->
                        <td width="244" valign="top">
                            <xsl:call-template name="public_dev_right"/>
                        </td>
                        <!-- Right Column Ends -->
                    </tr>
                </table>

                <!-- Footer begins -->
                <xsl:call-template name="Foot"/>
                <!-- Footer ends -->

            </body>

        </html>

    </xsl:template>
</xsl:stylesheet>
