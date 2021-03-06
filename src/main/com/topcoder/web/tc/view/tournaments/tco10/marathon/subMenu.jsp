<%@ include file="../includes/taglibs.jsp" %>

<c:set var="isDescription" value="${requestScope.MENU eq 'description'}"/>
<c:set var="isSchedule" value="${requestScope.MENU eq 'schedule'}"/>
<c:set var="isRules" value="${requestScope.MENU eq 'rules'}"/>
<c:set var="isAdvancers" value="${requestScope.MENU eq 'advancers'}"/>
<c:set var="isFinalResults" value="${requestScope.MENU eq 'finalResults'}"/>

<c:set var="descriptionClass" value="${isDescription ? 'actived' : ''}"/>
<c:set var="scheduleClass" value="${isSchedule ? 'actived' : ''}"/>
<c:set var="rulesClass" value="${isRules ? 'actived' : ''}"/>
<c:set var="advancersClass" value="${isAdvancers ? 'actived' : ''}"/>
<c:set var="finalResultsClass" value="${isFinalResults ? 'actived' : ''}"/>

<div class="subMenu">
    <ul class="secondaryNav overviewNav"><!-- orange secondary navigation -->
        <li class="${descriptionClass}"><!-- first item -->
            <tco10:marathonStaticPageLink page="description">
                <span class="left"></span>
                <span class="text">Description</span>
                <span class="right"></span>
            </tco10:marathonStaticPageLink>
        </li>
        <li class="${scheduleClass}"><!--  item -->
            <tco10:marathonStaticPageLink styleClass="tertiaryNavBT competitionRulesBT" page="schedule">
                <span class="left"></span>
                <span class="text">Schedule</span>
                <span class="right"></span>
            </tco10:marathonStaticPageLink>
        </li>
        <li class="${rulesClass}"><!-- second item -->
            <tco10:marathonStaticPageLink styleClass="tertiaryNavBT competitionRulesBT" page="rules">
                <span class="left"></span>
                <span class="text">Rules</span>
                <span class="right"></span>
            </tco10:marathonStaticPageLink>
        </li>
        <li class="${advancersClass}"><!-- third item-->
            <tco10:marathonStaticPageLink page="leaderboard">
                <span class="left"></span>
                <span class="text">Advancers</span>
                <span class="right"></span>
            </tco10:marathonStaticPageLink>
        </li>
        <li class="${finalResultsClass}"><!-- four item -->
            <tco10:marathonStaticPageLink styleClass="tertiaryNavBT SponsorsBT" page="finalResults">
                <span class="left"></span>
                <span class="text">Final Results</span>
                <span class="right"></span>
            </tco10:marathonStaticPageLink>
        </li>
    </ul>
    <div class="clear"></div>

    <div class="tertiaryNav">
        <c:choose>
            <c:when test="${isAdvancers}">
                <c:set var="isLeaderboard" value="${requestScope.SUB_MENU eq 'leaderboard'}"/>
                <c:set var="isBracket" value="${requestScope.SUB_MENU eq 'bracket'}"/>
                <c:set var="leaderboardClass" value="${isLeaderboard ? 'actived' : ''}"/>
                <c:set var="bracketClass" value="${isBracket ? 'actived' : ''}"/>
                <ul class="advancers">
                    <li class="${leaderboardClass}">
                        <tco10:marathonStaticPageLink page="leaderboard">Leaderboard</tco10:marathonStaticPageLink>
                    </li>
                    <li class="${bracketClass}">
                        <tco10:marathonStaticPageLink page="bracket">Bracket</tco10:marathonStaticPageLink>
                    </li>
                </ul>
            </c:when>
            <c:otherwise>
                <div class="clear"></div>
            </c:otherwise>
        </c:choose>
    </div>
    <!--End .tertiaryNav-->
    <div class="clear"></div>
</div><!--End .subMenu-->
