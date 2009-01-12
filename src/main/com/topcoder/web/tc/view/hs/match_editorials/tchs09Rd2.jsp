<%@  page language="java"  %>
<%@ taglib uri="tc.tld" prefix="tc" %>
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>
<%@ page import="com.topcoder.shared.util.ApplicationServer"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>TopCoder Statistics: TCHS09 Online Round 2</title>

<jsp:include page="../../script.jsp" />
<jsp:include page="../../style.jsp">
  <jsp:param name="key" value="tc_stats"/>
</jsp:include>
<script language="JavaScript" src="/js/print.js"></script>
</head>


<body>

<div id="onTop">
<jsp:include page="../../top.jsp" >
  <jsp:param name="level1" value=""/>
</jsp:include>
</div>


<table width="100%" border="0" cellpadding="0" cellspacing="0">
 <tr valign="top">
<!-- Left Column Begins-->
   <td width="180" id="onLeft">
      <jsp:include page="../../includes/global_left.jsp">
         <jsp:param name="node" value="hs_match_editorials"/>
      </jsp:include>
   </td>
<!-- Left Column Ends -->

<!-- Center Column Begins -->
<td class="statTableSpacer" width="100%" valign="top">
<div class="bodyText">
<jsp:include page="../../page_title.jsp" >
<jsp:param name="image" value="high_school"/>
<jsp:param name="title" value="Match Editorials"/>
</jsp:include>

<div class="linkBox">
    <a href="/tc?module=Static&amp;d1=hs&amp;d2=match_editorials&amp;d3=archive">Archive</a><br />
    <span id="printableLink"><a href="Javascript:makeInvisible();">Printable view</a><br /></span>
    <span id="navigableLink" class="invisible"><a href="Javascript:makeNavigable();">Normal view</a><br /></span>
    <a href="http://www.topcoder.com/tc?module=Static&d1=tchs09&d2=pages&d3=online_schedule">Match Overview</a><br />

<tc-webtag:forumLink forumID="525315" message="Discuss this match" /></div>
<span class="bodySubtitle">TCHS09 Online Round 2</span><br />Saturday, January 10, 2008
<br /><br />
<h2>Match summary</h2> 
<p> 
Round 2 of 2009 TCHS Tournament had 334 participants, and 250 of them were to advance to the next round, 
so a good time on easy guaranteed advancement. The problemset was relatively easy but 
quite challengeable, and the challenge phase was pretty eventful this time.
<br></br>
The match was won by 
<tc-webtag:handle coderId="22263204" context="hs_algorithm"/>, 
due to impressive time on all problems and 3 successfull challenges.
<tc-webtag:handle coderId="20036294" context="hs_algorithm"/>
with 5 challenges took the second place, and 
<tc-webtag:handle coderId="22663117" context="hs_algorithm"/> 
came third.
</p> 
 
<H1> 
The Problems 
</H1>
</p> 
<font size="+2"> 
<b><a href="/stat?c=problem_statement&amp;pm=9926&amp;rd=13729" name="9926">CyclicSequence</a></b> 
</font> 
<A href="Javascript:openProblemRating(9926)"><img src="/i/rate_it.gif" hspace="10" border="0" alt="rate it" /></A> 
<A HREF="http://forums.topcoder.com/?module=ThreadList&forumID=525315" CLASS="statText"><img src="/i/interface/btn_discuss_it.gif" alt="discuss it" border="0" /></A>
<br> 
Used as: Division One - Level One: <blockquote><table cellspacing="2"> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>Value</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      250 
    </td> 
  </tr> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>Submission Rate</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      318 / 330 (96.36%) 
    </td> 
  </tr> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>Success Rate</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      280 / 318 (88.05%) 
    </td> 
  </tr> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>High Score</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      <b>niyaznigmatul</b> for 249.28 points (1 mins 31 secs) 
    </td> 
  </tr> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>Average Score</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      221.30 (for 280 correct submissions) 
    </td> 
  </tr> 
</table></blockquote> 
<p>
Let <b>a</b> be a string of length <b>m</b>&lt;<b>n</b> which generates the same sequence as <b>s</b>.
First, it's evident that <b>a</b> is a prefix of <b>s</b>. Second, note that the sequence
generated by a string of length <b>k</b> is periodical with a period equal to <b>k</b>,
so if the first <b>m</b>*<b>n</b> elements of the sequences generated by strings <b>a</b> and <b>s</b> 
are identical, the sequences themselves are the same.
<br></br>
So, to find the shortest string which generates the same sequence as <b>s</b>, one had simply 
to check all prefixes of <b>s</b>, from the shortest to the longest, and for a prefix of length <b>m</b>
check whether the first <b>m</b>*<b>n</b> elements of the generated sequences are the same.
<br></br>
Java code follows:
<pre>public class CyclicSequence {
     public String minimalCycle(String s) {
          int m;
          for (m=1; m&lt;s.length(); m++)
          {    boolean ok=true;
               for (int i=0; i&lt;m*s.length(); i++)
                    if (s.charAt(i%m)!=s.charAt(i%s.length()))
                         ok=false;
               if (ok)
                    break;
          }
          return s.substring(0,m);
     }
}</pre>
One could also note that the length of the prefix should divide the length of the original string,
check only the prefixes of such length and only the first <b>n</b> elements of the sequence.
</p>
<font size="+2"> 
<b><a href="/stat?c=problem_statement&amp;pm=9928&amp;rd=13729" name="9928">TournamentWinner</a></b> 
</font> 
<A href="Javascript:openProblemRating(9928)"><img src="/i/rate_it.gif" hspace="10" border="0" alt="rate it" /></A> 
<A HREF="http://forums.topcoder.com/?module=ThreadList&forumID=525315" CLASS="statText"><img src="/i/interface/btn_discuss_it.gif" alt="discuss it" border="0" /></A>
<br> 
Used as: Division One - Level Two: <blockquote><table cellspacing="2"> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>Value</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      600 
    </td> 
  </tr> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>Submission Rate</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      168 / 330 (50.91%) 
    </td> 
  </tr> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>Success Rate</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      163 / 168 (97.02%) 
    </td> 
  </tr> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>High Score</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      <b>crazyb0y</b> for 581.83 points (5 mins 3 secs) 
    </td> 
  </tr> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>Average Score</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      373.79 (for 163 correct submissions) 
    </td> 
  </tr> 
</table></blockquote> 
<p>
Let <b>win</b>[i][j] be the probability of competitor <b>i</b> winning against competitor <b>j</b>,
and <b>adv</b>[i][k] be the probability of competitor <b>i</b> advancing to round <b>k</b>
(denoting winning the tournament as "advancing to round 4").
<b>adv</b>[i][1] is simply 1.0, since all competitors take part in round 1.
Let's calculate the values of <b>adv</b>[i][k] for <b>k</b> between 2 and 4, inclusive.
<br></br>
To get to round 2, competitor <b>i</b> must win against one opponent - player <b>i+1</b> for even <b>i</b> or player <b>i-1</b> for odd <b>i</b>.
Note that the index of the opponent can be calculated as (<b>i</b> xor 1). 
<pre>adv[i][2] = win[i][i xor 1] = adv[i][1] * adv[i xor 1][1] * win[i][i xor 1]</pre>
To get to round 3, competitor <b>i</b> must advance to round 2 and win against one of the two
opponents who could have advanced to round 2 as well. Competitors 0 and 1 will play against one of 
the competitors 2 and 3, while competitors 4 and 5 will play against one of the competitors 6 and 7.
So, for competitor <b>i</b> the possible opponents' indices can be calculated as (<b>i</b> xor 2) and (<b>i</b> xor 3).
<pre>adv[i][3] = adv[i][2] * (adv[i xor 2][2] * win[i][i xor 2] + adv[i xor 3][2] * win[i][i xor 3])</pre>
The pattern contunues: to get to round <b>k</b>, competitor <b>i</b> must get to round <b>k-1</b>
and win against one of the competitors who could have advanced to round <b>k-1</b> as well.
Thus, the probability of competitor <b>i</b> winning the tournament can be calculated as 
sum of (<b>adv</b>[i][3] * <b>adv</b>[i xor m][3] * <b>win</b>[i][i xor m]) over m between 4 and 7.
<br></br>
See 
<tc-webtag:handle coderId="22663117" context="hs_algorithm"/>'s 
<a href="http://www.topcoder.com/tc?module=HSProblemSolution&cr=22663117&rd=13729&pm=9928">solution</a> 
for a clean implementation of this approach.
</p>
<font size="+2"> 
<b><a href="/stat?c=problem_statement&amp;pm=10255&amp;rd=13729" name="10255">WizardsAppointments</a></b> 
</font> 
<A href="Javascript:openProblemRating(10255)"><img src="/i/rate_it.gif" hspace="10" border="0" alt="rate it" /></A> 
<A HREF="http://forums.topcoder.com/?module=ThreadList&forumID=525315" CLASS="statText"><img src="/i/interface/btn_discuss_it.gif" alt="discuss it" border="0" /></A>
<br> 
Used as: Division One - Level Three: <blockquote><table cellspacing="2"> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>Value</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      900 
    </td> 
  </tr> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>Submission Rate</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      154 / 330 (46.67%) 
    </td> 
  </tr> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>Success Rate</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      88 / 154 (57.14%) 
    </td> 
  </tr> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>High Score</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      <b>wcao</b> for 889.45 points (3 mins 6 secs) 
    </td> 
  </tr> 
  <tr> 
    <td class="bodyText" style="background: #eee;"> 
      <b>Average Score</b> 
    </td> 
    <td class="bodyText" style="background: #eee;"> 
      674.95 (for 88 correct submissions) 
    </td> 
  </tr> 
</table></blockquote> 
<p>
If we replace (<b>arrivalTimes</b>[i] - <b>scheduledTimes</b>[i]) with <b>delta</b>[i],
the problem is reduced to the following classic problem: given <b>N</b> points on a straight line,
find the points on this line with the minimal total distance to these points.
<br></br>
It's easy to prove that after sorting the array <b>delta</b> in ascending order, 
the points which minimize the total distance to the points of <b>delta</b> are 
<b>delta</b>[(<b>N</b>-1)/2] for odd <b>N</b>
or the interval of points between <b>delta</b>[<b>N</b>/2-1] and <b>delta</b>[<b>N</b>/2] 
for even <b>N</b>. The answer to the given problem is 1 for odd <b>N</b> and 
(<b>delta</b>[<b>N</b>/2]-<b>delta</b>[<b>N</b>/2-1]+1) for even <b>N</b>.
<br></br>
One could also implement a more straightforward approach,
which included selecting unique points from <b>delta</b>, sorting them, 
calculating the value of total waiting time in each point, finding a point or two points
which minimize the total waiting time and returning the number of points between them.
<br></br>
However, realizing that the wanted points will form a continuous interval with ends in <b>delta</b>
was vital for solving this problem, since checking all integer points between minimal and maximal 
values of <b>delta</b> separately ended in time limit.
</p>


<div class="authorPhoto">
    <img src="/i/m/Nickolas_big.jpg" alt="Author" />
</div>
<div class="authorText">
    By&#160;<tc-webtag:handle coderId="15635590" context="algorithm" /><br />    <em>TopCoder Member</em>
</div>
</div>
</td>
<!-- Center Column Ends -->

<!-- Right Column Begins -->
   <td width="170" id="onRight">
  <jsp:include page="../../public_right.jsp">
   <jsp:param name="level1" value="tchs"/>
  </jsp:include>
   </td>
<!-- Right Column Ends -->

<!-- Gutter -->
   <td width="10"><img src="/i/clear.gif" width="10" height="1" border="0"></td>
<!-- Gutter Ends -->
  </tr>
</table>

<div id="onBottom">
<jsp:include page="../../foot.jsp" />
</div>


</body>

</html>
