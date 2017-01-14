<%@include file="Header.jsp"%>
<div align="center">
<div class="signup" align="center">
<form:form>
<h3>FIRST NAME: ${userDetails.firstName}</h3>
<h3>LAST NAME: ${userDetails.lastName}</h3>
<h3>CONTACT INFO: ${userDetails.contactNo}</h3>
<h3>E-MAIL ID: ${userDetails.emailId}</h3>
<h3>USERNAME: ${userDetails.userName}</h3>
<%-- <h3>PASSWORD: ${userDetails.password}</h3> --%>
<td>
<input name="_eventId_submit" type="submit" value="CONFIRM"/>
<input name="_eventId_edit" type="submit" value="EDIT"/>
</td>
</form:form>
</div>
</div>
<%@ include file="Footer.jsp"%>