<%@include file="Header.jsp"%>
<style>
/* #categoryTable */
/* { */
/* display: none; */
/* max-width: 400px; */
/* } */
</style>
<div align="center">
<h1>
<p style="font-size: x-large;">USER LOGIN FORM</p>
</h1>
</div>
<div align="center">
<fieldset>
<form method="post" action="perform_login">
<!-- <div class='kickass_field'> -->
<!--           <input type="text" name="username" maxlength='30' required='required'/> -->
<!--           <lable> -->
<!--             <i>USERNAME</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'> -->
<!--           <input type="password" name="password" maxlength='30' required='required'/> -->
<!--           <lable> -->
<!--             <i>PASSWORD</i> -->
<!--           </lable> -->
<!--         </div> -->
<input type="text" name="username" placeholder="Enter Your Username"/>
<input type="password" name="password" placeholder="Enter Your Password"/>
<input type="submit" value="LOGIN"/>
<input type="reset" value="RESET"/>
</form>
</fieldset>
</div>
<%@ include file="Footer.jsp"%>