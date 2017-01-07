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
<p style="font-size: x-large;">USER REGISTRATION FORM</p>
</h1>
</div>
<div id="contain" align="center">
<div class="signup" align="center">
<form:form modelAttribute="userDetails">
<form:input type="hidden" path="userId"/>
<form:input path="firstName" placeholder="Enter First Name"/>
<form:errors path="firstName"/><br>
<form:input path="lastName" placeholder="Enter Last Name"/>
<form:errors path="lastName"/><br>
<form:input path="contactNo" placeholder="Enter Contact Info"/>
<form:errors path="contactNo"/><br>
<form:input path="emailId" placeholder="Enter E-mail Id"/>
<form:errors path="emailId"/><br>
<form:input path="userName" placeholder="Enter Your Username"/>
<form:errors path="userName"/><br>
<form:password path="password" placeholder="Enter Your Password"/>
<form:errors path="password"/><br>
<tr>
<td><input name="_eventId_submit" type="submit" value="REGISTER"/></td>
<td><input type="reset" value="RESET"/></td>
<!-- <td><input type="text" ng-model="find" placeholder="Search"/></td> -->
</tr>
</form:form>
</div>
</div>
<%@ include file="Footer.jsp" %>