<%@ page import="com.topcoder.web.email.servlet.*" %>
<jsp:useBean id="AddressList" scope="session" class="com.topcoder.web.email.bean.AddressListForm" />
<%@ taglib uri="/email-taglib.tld" prefix="email"%>
<h3>Mailing list members</h3>

<% // alternate colors every row...
	int row = 0;
	String[] colors = { "#EEEEEE", "#FFFFFF" };
%>

<table border=0 cellpadding=2 cellspacing=0>
<email:memberIDIterator id="memberID" addressListID="<%=AddressList.getId()%>">
<% System.out.println("yep");%>
	<tr bgcolor="<%=colors[(row++)%colors.length]%>">

	<td valign="top" class="bodyText">
	<%=row%>.
	</td>

	<td width=75% class="bodyText">
	<email:memberDataDisplay memberID="<%=memberID%>" addressListID="<%=AddressList.getId()%>"/>
	</td>

	<td valign="top" class="bodyText">
	<a href="javascript:taskSubmit('<%=EmailConstants.ADDRESSLIST_TASK%>', '<%=EmailConstants.ADDRESSLIST_EDIT_MEMBER%>', '<%=memberID%>');"
		onMouseOver="window.status='Edit member'; return true;"
		onMouseOut="window.status=''; return true;">
	[edit]</a>
	</td>

	<td valign="top" class="bodyText">
	<a href="javascript:taskSubmit('<%=EmailConstants.ADDRESSLIST_TASK%>', '<%=EmailConstants.ADDRESSLIST_DELETE_MEMBER%>', '<%=memberID%>');"
		onMouseOver="window.status='Delete member'; return true;"
		onMouseOut="window.status=''; return true;">
	[delete]</a>
</td>

</tr>
</email:memberIDIterator>
</table>
