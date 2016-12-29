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
<div id="contain" align="center">
<div class="signup" align="center">
<form method="post" action="perform_login">
<input type="text" name="username" placeholder="Enter Your Username"/>
<input type="password" name="password" placeholder="Enter Your Password"/>
<input type="submit" value="LOGIN"/>
<input type="reset" value="RESET"/>
</form>
<%-- <c:if test="${!empty category.categoryName && !empty category.categoryDescription}"> --%>
<!-- <input type="submit" value="Edit Category"/> -->
<%-- </c:if> --%>
<%-- <c:if test="${empty category.categoryName || empty category.categoryDescription}"> --%>
<!-- <input type="submit" value="Add Category"/> -->
<!-- <input type="button" id="buttonToggle" value="Show List" onclick="toggle()"/> -->
<%-- </c:if> --%>
<!-- <td><input type="text" ng-model="find" placeholder="Search"/></td> -->
</div>
</div>
<%@ include file="Footer.jsp"%>