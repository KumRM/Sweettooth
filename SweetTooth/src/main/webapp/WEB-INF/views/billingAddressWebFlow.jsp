<%@ include file="Header.jsp" %>
<style>
#categoryTable
{
display: none;
max-width: 400px;
}
</style>
<div class="page-header">
<h2 align="center">
<p style="font-size: smaller; color: #823f3f;">Billing Address</p>
</h2>
</div>
<div align="center">
<fieldset>
<form:form modelAttribute="billingAddress">
<form:input type="hidden" path="billingAddressId"/>
<form:errors path="flatNo"/>
<form:input path="flatNo" placeholder="Enter Your Flat No"/>
<form:errors path="streetName"/>
<form:input path="streetName" placeholder="Enter Your Street Name"/>
<form:errors path="locality"/>
<form:input path="locality" placeholder="Enter Your Locality"/>
<form:errors path="city"/>
<form:input path="city" placeholder="Enter Your City"/>
<form:errors path="state"/>
<form:input path="state" placeholder="Enter Your State"/>
<form:errors path="pinCode"/>
<form:input path="pinCode" placeholder="Enter Your Pin-Code"/>
<tr>
<td><input name="_eventId_submit" type="submit" value="SUBMIT"/></td>
<td><input type="reset" value="RESET"/></td>
</tr>
</form:form>
</fieldset>
</div>
<%@ include file="Footer.jsp" %>