<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../top.xsl"/>
  <xsl:import href="../script.xsl"/>
  <xsl:import href="../includes/body_top.xsl"/>  
  <xsl:import href="../foot.xsl"/>
  <xsl:import href="../includes/modules/stats_intro.xsl"/>  
  <xsl:import href="../includes/stats/public_stats_left.xsl"/> 
  <xsl:import href="../includes/public_right_col.xsl"/>     
  <xsl:output indent="no" method="html" doctype-public="-//W3C//DTD HTML 4.0 Transitional//EN"/>
  <xsl:template match="/">
    <HTML>
      <HEAD>
        <xsl:call-template name="Preload"/>      
        <TITLE>TopCoder :: Statistics</TITLE>
        <xsl:call-template name="CSS"/>      
        <!--<LINK REL="stylesheet" TYPE="text/css" HREF="/css/style.css"/>
        <LINK REL="stylesheet" TYPE="text/css" HREF="/css/coders.css"/>-->
        <META NAME="description" CONTENT="TopCoder is a programming tournament site. All members who compete attain a rating that provides a metric for coding competence and potential. These ratings, coupled with tournament performance, can lead to monetary rewards and employment opportunities."/>
        <META NAME="keywords" CONTENT="Computer Jobs, Programming, Programming Jobs, Programming Contest, Programming Competition, Online Games, Coding, Information Technology Jobs, Java, C++"/>
      </HEAD>
      <BODY BGCOLOR="#FFFFFF" TOPMARGIN="0" MARGINHEIGHT="0" LEFTMARGIN="0" MARGINWIDTH="0">
        <xsl:call-template name="Top"/>

<!-- Body Begins -->
<TABLE WIDTH="100%" HEIGHT="69%" BORDER="0" CELLPADDING="0" CELLSPACING="0" BGCOLOR="#CCCCCC">
  <TR>
    <!-- Left Column Begins -->
    <TD WIDTH="170" BGCOLOR="#CCCCCC" VALIGN="top">
<!-- Left Column Include Begins -->  
    <!-- Global Seconday Nav Begins -->        
        <xsl:call-template name="public_stats_left"/>
  <!-- Global Seconday Nav Ends -->      
<!-- Left Column Include Ends -->              
      </TD>
  <!-- Left Column Ends -->
  <!-- Gutter Begins -->
    <TD WIDTH="4" BGCOLOR="#CCCCCC" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="8" BORDER="0"/></TD>
    <!-- Gutter Ends -->

<!-- Body Area -->
  <!-- Center Column Begins -->  
    <TD CLASS="bodyText" WIDTH="100%" bgcolor="#CCCCCC" valign="top"><img src="/i/clear.gif" width="240" height="1" VSPACE="5" BORDER="0"/><BR/>
<xsl:call-template name="BodyTop">
  <xsl:with-param name="image1">white</xsl:with-param>
  <xsl:with-param name="image">statisticsw</xsl:with-param>
  <xsl:with-param name="title">&#160;Last Match Summary</xsl:with-param>
</xsl:call-template>
<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" BGCOLOR="#FFFFFF" WIDTH="100%">
  <TR>
    <TD BGCOLOR="#FFFFFF" VALIGN="top" WIDTH="11"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="1" BORDER="0"/></TD>
    <TD CLASS="statTextBig" COLSPAN="2" VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="240" HEIGHT="1" BORDER="0"/><BR/>
          <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
            <TR>
              <TD VALIGN="middle" COLSPAN="3"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="5" BORDER="0"/></TD>
            </TR>          
            <TR>
              <TD VALIGN="middle" COLSPAN="3" HEIGHT="18" BACKGROUND="/i/steel_gray_bg.gif" CLASS="statTextBig">&#160;The next TopCoder competition:</TD>
            </TR>
            <TR>
              <TD VALIGN="middle" COLSPAN="3"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
            </TR>            
            <TR>
              <TD VALIGN="middle" HEIGHT="15" BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="statTextBig" WIDTH="40%">&#160;Match</TD>            
              <TD VALIGN="middle" BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="statTextBig" WIDTH="40%">&#160;Date</TD>
              <TD VALIGN="middle" BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="statTextBig" WIDTH="20%">&#160;Time</TD>
            </TR>
            <TR>
              <TD VALIGN="middle" COLSPAN="3"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
            </TR>                        
            <TR>
              <TD VALIGN="middle" HEIGHT="13" CLASS="bodyText"><A HREF="/?t=schedule&amp;c=tourny_sched" CLASS="bodyGeneric"><!-- Single Round Match 80 -->2002 TCCC Semifinals</A></TD>            
              <TD VALIGN="middle" CLASS="bodyText">Friday, April 19</TD>
              <TD VALIGN="middle" CLASS="bodyText"><A HREF="/?t=schedule&amp;c=tourny_sched" CLASS="bodyGeneric">tourney schedule</A></TD>
            </TR>            
            <TR>
              <TD VALIGN="middle" COLSPAN="3"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="22" BORDER="0"/></TD>
            </TR>
                    <!-- <TR>
                      <TD COLSPAN="3" ALIGN="center"><BR/><A HREF="/i/mot_redir.html" target="_blank"><IMG SRC="/i/moto_banner.gif" ALT="" WIDTH="428" HEIGHT="84" VSPACE="5" BORDER="0"/></A></TD>
                    </TR> -->          
                    <!-- <TR>
                      <TD COLSPAN="3" ALIGN="center"><BR/><A HREF="/index?t=schedule&amp;c=tourny_spons"><IMG SRC="/i/tournament/sun_banner.gif" ALT="" WIDTH="428" HEIGHT="84" VSPACE="5" BORDER="0"/></A></TD>
                    </TR> -->            
            <TR>
              <TD VALIGN="middle" COLSPAN="3" HEIGHT="18" BACKGROUND="/i/steel_gray_bg.gif" CLASS="statTextBig">&#160;Last Match Summary: Single Round Match 80 - April 15, 2002<!-- 2002 TCCC Regional Championships - March 13 --></TD>
            </TR>
            <TR>
              <TD VALIGN="middle" COLSPAN="3"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
            </TR>                                               
            <TR>
              <TD VALIGN="middle" COLSPAN="3" HEIGHT="15" BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="statTextBig">&#160;Division-I<!-- Northeast Region --> </TD>
            </TR>
            <TR>
              <TD VALIGN="middle" COLSPAN="3"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="2" BORDER="0"/></TD>
            </TR>                      
            <TR>
              <TD VALIGN="top" COLSPAN="3" CLASS="bodyText">
<!-- <A HREF="/index?t=statistics&amp;c=consec_wins_div1" CLASS="bodyGeneric">View the list of Division-I Consecutive Wins</A>
<A HREF="/stat?c=all_time_wins_by_div&amp;dn=1" CLASS="bodyGeneric">View the list of Division-I Wins</A>
<A HREF="/stat?c=biggest_rating_gains&amp;dn=1" CLASS="bodyGeneric">View the list of Division-I Rating Point Gain</A>
<A HREF="/stat?c=biggest_rating_gains&amp;dn=2" CLASS="bodyGeneric">View the list of Division-II Rating Point Gain</A>
<A HREF="/index?t=statistics&amp;c=winning_debut" CLASS="bodyGeneric">View the list of Winning Debuts</A> 
<A HREF="/stat?c=all_time_wins" CLASS="bodyGeneric">View the list of Overall Wins</A>
<A HREF="/index?t=statistics&amp;c=winning_debut" CLASS="bodyGeneric">View the list of Winning Debuts</A>
<A HREF="/stat?&amp;c=highest_totals&amp;dn=2" CLASS="bodyGeneric">View the list of Division-II Point Totals</A>
<A HREF="/stat?c=impressive_debuts" CLASS="bodyGeneric">View the list of Impressive Debuts</A>
<A HREF="/stat?c=last_match&amp;rd=4115&amp;dn=1" CLASS="bodyGeneric">dmwright</A>
-->
<P>need opening to set stage</P>
<P>While <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">ZorbaThut</A> was the first to submit for any points in Room 1 (a mere two minutes and forty-eight seconds for the Level 1) it ended up being <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">reid</A> who was the big winner in Room 1 with a final point total of 1318.64. <B>Reid</B> earned the impressive total with 195.26 for Level One, 335.56 for Level Two, and 787.79 for the Level Three problem during the "Coding Phase". <B>Reid</B> opted not to take on anyone's submissions during the "Challenge Phase", nor were any challenges made against his. <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">Doeth</A> suffered the biggest point loss in the "Challenge Phase" after failing to challenge <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">dmwright's</A> Level Three problem only to suffer further loss when <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">benetin</A> successfully challenged his Level Two problem resulting in a total loss of 468.77 points.</P>
<P>Room 3 was painful for every competitor as each one lost points in either the "Challenge Phase" or the "System Test" phase. <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">Wasteland</A>, <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">Ken Alverson</A>, and <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">ante</A> suffered the most losing points in both phases. <B>Wasteland</B> dropped 946.20 leaving him with a total of only 191.61 for the match. <B>Ken Alverson</B> lost a total of 859.72 giving him only 186.46 for the match. Ultimately, it was <B>ante</B> who suffered the greatest loss, but not in points. <B>ante's</B> rating dropped 218 points after submitting only a total of 30.78 points for his room.</P>
<P>Room 6 had the highest margin of victory with <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">dsp</A> finishing the match with a total of 1196.13 with 50 of those points coming from the "Challenge Phase". <B>dsp</B> cleared <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">Nok</A>, the number two coder for the room, by a whopping 860.14 points. The slimmest margin was seen in Room 10 where <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">memetic</A> beat out <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">ShakeSpace</A> by a mere 1.19 points. <B>Memetic</B> held on to win the room even after losing 761.89 points in the "Challenge Phase" to <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">gaav</A> who successfully challenged <B>memetic's</B> Level Three problem. <B>Memetic</B> made up for the loss in points and ultimately the room win by successfully picking off each Level Two submission of <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">langer</A>, <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">gaav</A>, and <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">H2Odysee</A>.</P>
<P>Overall, the most impressive performance for the match goes to <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">Yarin</A> in room 22 with the successful submission of all three problems levels. <B>Yarin</B> earned 193.96 for Level One, 269.96 for Level Two and 762.21 for Level Three. In addition to the room win, <B>Yarin's</B> rating jumped 530 points to 2090. While the room was absent of any challenges, the "System Test" phase did knock out the Level Two problem for both <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">Maris</A> and <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">pan</A> putting them at 908.29 and 799.24 respectively for the match.</P>
<P>While kudos are in order for <B>Yarin</B>, <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=1" CLASS="bodyGeneric">mpa</A> suffered a significant loss in this match. <B>mpa's</B> only submission was on the Level One problem for a possible 205.01 points. It was during the "System Test" though, that <B>mpa's</B> 205.01 points were eliminated leaving <B>mpa</B> with a final score of 0 and a rating drop of 350 to 1167.</P>
                 </TD>
            </TR>             
            <TR><TD VALIGN="middle" COLSPAN="3"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="18" BORDER="0"/></TD></TR>        
            <TR><TD VALIGN="middle" COLSPAN="3" HEIGHT="15" BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="statTextBig">&#160;Division-II</TD></TR>
            <TR><TD VALIGN="middle" COLSPAN="3"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="2" BORDER="0"/></TD></TR>
            <TR>
              <TD VALIGN="top" COLSPAN="3" CLASS="bodyText">
<P>Division II was not without it's highlights (and lowlights) with <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=2" CLASS="bodyGeneric">Slamin</A> turning in the most impressive performance for Room 23. <B>Slamin</B> added 50 points in the "Challenge Phase" by taking down <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=2" CLASS="bodyGeneric">the_lark's</A> Level Two problem, to a possible 760.02 (for the Level Two and Three problems) from the "Coding Phase" to finish the match with a total of 810.02. <B>the_lark</B> attempted to drop <B>Slamin's</B> Level Two problem, but to no avail resulting in a further loss of 50 points and a second to last finish for room 23 with a final point total of 94.30.</P>
<P>Painful as this may seem, the real heartache was in room 27 where <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=2" CLASS="bodyGeneric">skavoovie</A> finished the match with -50 points. <B>Skavoovie</B> lost 278.28 points in the "Challenge Phase" to <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=2" CLASS="bodyGeneric">MrProper</A>. An additional 50 points were deducted when <B>skavoovie</B> failed to successfully challenge <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=2" CLASS="bodyGeneric">versen's</A> Level Two problem. The "System Test" finished off <B>skavoovie</B> by eliminating the Level One problem submission. With the -50 points for the failed challenge, <B>skavoovie</B> finished the match in the red and with a rating drop from 1106 to 833.</P>
<P>Room 30 was seems to have been the most balanced of all rooms. <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=2" CLASS="bodyGeneric">Slowjoe</A> took the room with a total of 524.52 based solely on efforts in the "Coding Phase", while <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=2" CLASS="bodyGeneric">Bubbajo</A>, <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=2" CLASS="bodyGeneric">MJN222</A>, and <A HREF="/stat?c=last_match&amp;rd=4136&amp;dn=2" CLASS="bodyGeneric">emmpee</A> all finished at 457.09, 432.35, and 425.67 respectively.</P>
          </TD>
            </TR>            
          </TABLE>
          <P><br/></P>
    </TD>
    <TD VALIGN="top" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="10" HEIGHT="1" BORDER="0"/></TD>
  </TR>
				<TR>
					<TD COLSPAN="4" VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="10" BORDER="0"/></TD>
				</TR>   	
				<TR>
					<TD VALIGN="top" BGCOLOR="#CCCCCC" WIDTH="11" ALIGN="right"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="8" BORDER="0"/></TD>
					<TD VALIGN="top" WIDTH="75"><IMG SRC="/i/table_mid_left2.gif" ALT="" WIDTH="14" HEIGHT="8" BORDER="0"/></TD>
					<TD VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
					<TD VALIGN="top" BGCOLOR="#CCCCCC" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
				</TR>	
				<TR>
					<TD VALIGN="top" WIDTH="11" ALIGN="right" BGCOLOR="#CCCCCC"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="8" BORDER="0"/></TD>
					<TD VALIGN="top" BGCOLOR="#CCCCCC" WIDTH="14"><IMG SRC="/i/table_btm_left2.gif" ALT="" WIDTH="14" HEIGHT="8" BORDER="0"/></TD>
					<TD VALIGN="top" BGCOLOR="#CCCCCC" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
					<TD VALIGN="top" BGCOLOR="#CCCCCC" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
				</TR>
			</TABLE>
		</TD>
  <!-- Center Column Ends -->
<!-- Body Area Ends -->

  <!-- Gutter -->
    <TD WIDTH="4" BGCOLOR="#CCCCCC"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="1" BORDER="0"/></TD>
    <!-- Gutter Ends -->
  <!-- Right Column Begins -->
    <TD WIDTH="170" BGCOLOR="#CCCCCC" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="170" HEIGHT="1" BORDER="0"/><BR/>
<!-- <A HREF="/index?t=schedule&amp;c=tourny_sched"><IMG SRC="/i/tournament/sun_small_banner2.gif" ALT="" WIDTH="170" HEIGHT="84" BORDER="0"/></A> -->
<!-- Right Column Include Begins -->        
        <xsl:call-template name="public_right_col"/>        
<!-- Right Column Include Ends -->        
        </TD>
  <!-- Right Column Ends -->
  <!-- Gutter -->
    <TD WIDTH="25" BGCOLOR="#CCCCCC"><IMG SRC="/i/clear.gif" WIDTH="25" HEIGHT="1" BORDER="0"/></TD>
    <!-- Gutter Ends -->
  </TR>
</TABLE>
<!-- Body Ends -->
        <xsl:call-template name="Foot"/>
      </BODY>
    </HTML>
  </xsl:template>
</xsl:stylesheet>


