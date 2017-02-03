<%@include file="Header.jsp"%>
<div class="page-header">
<h2 align="center">
<p style="font-size: smaller; color: #823f3f;">Billing Address</p>
</h2>
</div>
<div align="center">
<div class="signup" align="center">
<form:form>
<h3>FLAT NO: ${billingAddress.flatNo}</h3>
<h3>STREET NAME: ${billingAddress.streetName}</h3>
<h3>LOCALITY: ${billingAddress.locality}</h3>
<h3>CITY: ${billingAddress.city}</h3>
<h3>STATE: ${billingAddress.state}</h3>
<h3>PIN-CODE: ${billingAddress.pinCode}</h3>
<td>
<input name="_eventId_submit" type="submit" value="CONFIRM"/>
<input name="_eventId_edit" type="submit" value="EDIT"/>
</td>
</form:form>
</div>
</div>
<%@ include file="Footer.jsp"%>