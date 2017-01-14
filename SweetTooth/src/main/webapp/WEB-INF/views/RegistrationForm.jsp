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
<div align="center">
<fieldset>
<form:form modelAttribute="userDetails" action="addUser">
<form:input type="hidden" path="userId"/>
<div class='kickass_field'>
          <form:input path="firstName" maxlength='30' required='required'/>
          <lable>
            <i>FIRST NAME</i>
          </lable>
        </div>
<div class='kickass_field'>
          <form:input path="lastName" maxlength='30' required='required'/>
          <lable>
            <i>LAST NAME</i>
          </lable>
        </div>
<div class='kickass_field'>
          <form:input path="contactNo" maxlength='30' required='required'/>
          <lable>
            <i>CONTACT INFO</i>
          </lable>
        </div>
<div class='kickass_field'>
          <form:input path="emailId" maxlength='30' required='required'/>
          <lable>
            <i>E-MAIL ID</i>
          </lable>
        </div>
<div class='kickass_field'>
          <form:input path="userName" maxlength='30' required='required'/>
          <lable>
            <i>USERNAME</i>
          </lable>
        </div>
<div class='kickass_field'>
          <form:password path="password" maxlength='30' required='required'/>
          <lable>
            <i>PASSWORD</i>
          </lable>
        </div>
<%-- <form:input path="firstName" placeholder="Enter First Name"/> --%>
<%-- <form:errors path="firstName"/><br> --%>
<%-- <form:input path="lastName" placeholder="Enter Last Name"/> --%>
<%-- <form:errors path="lastName"/><br> --%>
<%-- <form:input path="contactNo" placeholder="Enter Contact Info"/> --%>
<%-- <form:errors path="contactNo"/><br> --%>
<%-- <form:input path="emailId" placeholder="Enter E-mail Id"/> --%>
<%-- <form:errors path="emailId"/><br> --%>
<%-- <form:input path="userName" placeholder="Enter Your Username"/> --%>
<%-- <form:errors path="userName"/><br> --%>
<%-- <form:password path="password" placeholder="Enter Your Password"/> --%>
<%-- <form:errors path="password"/><br> --%>
<%-- <form:input path="shippingAddress.flatNo" placeholder="Enter Flat No"/>
<form:errors path="shippingAddress.flatNo"/><br>
<form:input path="billingAddress.flatNo" placeholder="Enter Flat No"/>
<form:errors path="billingAddress.flatNo"/><br> --%>
<tr>
<td><input type="submit" value="REGISTER"/></td>
<td><input type="reset" value="RESET"/></td>
<!-- <td><input type="text" ng-model="find" placeholder="Search"/></td> -->
</tr>
</form:form>
</fieldset>
</div>
<%@ include file="Footer.jsp" %>