<%@ include file="Header.jsp" %>
<style>
#categoryTable
{
display: none;
max-width: 400px;
}
</style>
<div align="center">
<h1>
<p style="font-size: x-large;">BILLING ADDRESS FORM</p>
</h1>
</div>
<div id="contain" align="center">
<div class="signup" align="center">
<form:form modelAttribute="billingAddress">
<form:input type="hidden" path="billingAddressId"/>
<form:input path="flatNo" placeholder="Enter Your Flat No"/>
<form:errors path="flatNo"/><br>
<form:input path="streetName" placeholder="Enter Your Street Name"/>
<form:errors path="streetName"/><br>
<form:input path="locality" placeholder="Enter Your Locality"/>
<form:errors path="locality"/><br>
<form:input path="city" placeholder="Enter Your City"/>
<form:errors path="city"/><br>
<form:input path="state" placeholder="Enter Your State"/>
<form:errors path="state"/><br>
<form:input path="pinCode" placeholder="Enter Your PinCode"/>
<form:errors path="pinCode"/><br>
<tr>
<td><input name="_eventId_submit" type="submit" value="SUBMIT"/></td>
<td><input type="reset" value="RESET"/></td>
<!-- <td><input type="text" ng-model="find" placeholder="Search"/></td> -->
</tr>
</form:form>
</div>
</div>
<%@ include file="Footer.jsp" %>