<%@include file="Header.jsp"%>
<div align="center">
<h1>
<p style="font-size: x-large;">SHIPPING ADDRESS</p>
</h1>
</div>
<div align="center">
<div class="signup" align="center">
<form:form>
<h3>FLAT NO: ${shippingAddress.flatNo}</h3>
<h3>STREET NAME: ${shippingAddress.streetName}</h3>
<h3>LOCALITY: ${shippingAddress.locality}</h3>
<h3>CITY: ${shippingAddress.city}</h3>
<h3>STATE: ${shippingAddress.state}</h3>
<h3>PIN-CODE: ${shippingAddress.pinCode}</h3>
<td>
<input name="_eventId_submit" type="submit" value="CONFIRM"/>
<input name="_eventId_edit" type="submit" value="EDIT"/>
</td>
</form:form>
</div>
</div>
<%@ include file="Footer.jsp"%>