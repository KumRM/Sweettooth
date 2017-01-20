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
<form:form modelAttribute="userDetails">
<form:input type="hidden" path="userId"/>
<form:errors path="firstName"/>
<form:input path="firstName" placeholder="Enter Your First Name"/>
<form:errors path="lastName"/>
<form:input path="lastName" placeholder="Enter Your Last Name"/>
<form:errors path="contactNo"/>
<form:input path="contactNo" placeholder="Enter Your Contact Info"/>
<form:errors path="emailId"/>
<form:input path="emailId" placeholder="Enter Your E-mail Id"/>
<form:errors path="userName"/>
<form:input path="userName" placeholder="Enter Your UserName"/>
<form:errors path="password"/>
<form:password path="password" placeholder="Enter Your Password"/>

<!-- <div class='kickass_field'> -->
<%--           <form:input path="firstName" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>FIRST NAME</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'> -->
<%--           <form:input path="lastName" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>LAST NAME</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'> -->
<%--           <form:input path="contactNo" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>CONTACT INFO</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'> -->
<%--           <form:input path="emailId" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>E-MAIL ID</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'> -->
<%--           <form:input path="userName" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>USERNAME</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'> -->
<%--           <form:password path="password" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>PASSWORD</i> -->
<!--           </lable> -->
<!--         </div> -->
<tr>
<td><input name="_eventId_submit" type="submit" value="REGISTER"/></td>
<td><input type="reset" value="RESET"/></td>
<!-- <td><input type="text" ng-model="find" placeholder="Search"/></td> -->
</tr>
</form:form>
</fieldset>
</div>
<%@ include file="Footer.jsp" %>