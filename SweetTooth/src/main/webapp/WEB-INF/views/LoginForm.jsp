<%@include file="Header.jsp"%>
<style>
/* #categoryTable */
/* { */
/* display: none; */
/* max-width: 400px; */
/* } */
</style>
<div align="center">
<h2 class="brand_name">
<p style="font-size: smaller; color: #823f3f;">USER LOGIN FORM</p>
</h2>
</div>
<div align="center">
<fieldset>
<form:form method="post" action="perform_login">
<input type="text" name="username" placeholder="Enter Your Username" autofocus="autofocus"/>
<input type="password" name="password" placeholder="Enter Your Password"/>
<input type="submit" value="LOGIN"/>
<input type="reset" value="RESET"/>
</form:form>
</fieldset>
</div>
<%@ include file="Footer.jsp"%>