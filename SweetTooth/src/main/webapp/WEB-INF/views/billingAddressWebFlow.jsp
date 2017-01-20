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
<!-- <div class='kickass_field'> -->
<%--           <form:input path="flatNo" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>FLAT NO</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'> -->
<%--           <form:input path="streetName" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>STREET NAME</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'> -->
<%--           <form:input path="locality" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>LOCALITY</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'> -->
<%--           <form:input path="city" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>CITY</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'> -->
<%--           <form:input path="state" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>STATE</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'> -->
<%--           <form:input path="pinCode" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>PIN-CODE</i> -->
<!--           </lable> -->
<!--         </div> -->
<tr>
<td><input name="_eventId_submit" type="submit" value="SUBMIT"/></td>
<td><input type="reset" value="RESET"/></td>
<!-- <td><input type="text" ng-model="find" placeholder="Search"/></td> -->
</tr>
</form:form>
</fieldset>
</div>
<%@ include file="Footer.jsp" %>