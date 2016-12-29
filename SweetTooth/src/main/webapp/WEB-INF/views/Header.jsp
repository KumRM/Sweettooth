<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--     <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/style.css">
<!--   <link rel="stylesheet" href="resources/css/SearchExpand.css"> -->
  <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/angular.min.js"></script>
<title>SweetTooth</title>

</head>
<body bgcolor="lightgrey">
  
  <!-- CODE FOR NAVBAR -->
<nav style="height: 25px"  class="navbar navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span style="color: yellow; height: 250%; width: 250%" class="glyphicon glyphicon-triangle-bottom"></span>
      </button>
	<img style="height: 190px; width: 190px" class="navbar-brand" href="/SweetTooth/" alt="SweetTooth" src="resources/Images/logo.png"/>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <button type="button" class="btn btn-info"><a href="/SweetTooth/">Home</a></button>
        <button type="button" class="btn btn-info"><a href="#">Menu</a></button>
        <button type="button" class="btn btn-info"><a href="#">Customers</a></button> 
        <button type="button" class="btn btn-info"><a href="#">Talk To Us</a></button>
        <button type="button" class="btn btn-info dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin<b class="caret"></b></a>
        <ul class="dropdown-menu">
			<li><a href="CategoryForm">CATEGORY</a></li>
        	<li><a href="SubCategoryForm">SUB-CATEGORY</a></li>
        	<li><a href="BakerForm">BAKER</a></li>
        	<li><a href="ProductForm">PRODUCT</a></li>
        </ul>	        
        </button>
        <span style="font-size: 50px;"><input id="demo-2" type="search"/></span>
      </ul> 
          <ul class="nav navbar-nav navbar-right">
        <button type="button" class="btn btn-info dropdown">
        <c:if test="${empty pageContext.request.userPrincipal}">
        <a href="RegistrationForm"><span class="glyphicon glyphicon-user"></span>Sign Up</a>
        </c:if>
        <c:if test="${!empty pageContext.request.userPrincipal}">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>${pageContext.request.userPrincipal.name}<b class="caret"></b></a>
        <ul class="dropdown-menu">
        	<li><a href="#">YOUR PROFILE</a></li>
        	<li><a href="#">ORDER HISTORY</a></li>
        	<li><a href="#">YOUR BOX</a></li>
        	<li><a href="#">PRODUCT</a></li>
        </ul>
        </c:if>
        </button>
        <button type="button" class="btn btn-info dropdown">
        <c:if test="${empty pageContext.request.userPrincipal}">
        <a href="LoginForm"><span class="glyphicon glyphicon-log-in"></span>LogIn</a>
        </c:if>
        <c:if test="${!empty pageContext.request.userPrincipal}">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-log-out"></span>Account<b class="caret"></b></a>
        <ul class="dropdown-menu">
        	<li><a href="#">Settings</a></li>
        	<li><a href="logout">Log Out</a></li>
        </ul>
        </c:if>
        </button>
      </ul>
    </div>
      
      
      
<!--       		<div class="nav navbar-nav navbar-right"> -->
<!-- 			<!--  		<button type="button" class="btn btn-info"> -->
<!-- 			<!-- <a href="#"><span class="glyphicon glyphicon-search"></span></a> -->
<!-- 			<!-- </button> -->
<!-- 			<!-- <div class="row"> -->
<!-- 			<!--         <div class="col-md-4 col-md-offset-3"> -->
<%-- 			<%--             <form action="" class="search-form"> --%>
<!-- 			<!--                 <div class="form-group has-feedback"> -->
<!-- 			<!--             		<label for="search" class="sr-only">Search</label> -->
<!-- 			<!--             		<input type="text" class="form-control" name="search" id="search" placeholder="search"> -->
<!-- 			<!--               		<span class="glyphicon glyphicon-search form-control-feedback"></span> -->
<!-- 			<!--             	</div> -->
<%-- 			<%--             </form> --%> 
<!-- 			<!--         </div> -->
<!-- 			<!--     </div>  --> 

<%-- <%-- 			<form id="demo-2"> --%> 
<!-- <!-- 				<input type="search" placeholder="Search"> -->
<%-- <%-- 			</form> --%> 
<!-- 			<button type="button" class="btn btn-info"> -->
<!-- 				<a href="#"><span class="glyphicon glyphicon-user"></span> Sign -->
<!-- 					Up</a> -->
<!-- 			</button> -->
<!-- 			<button type="button" class="btn btn-info"> -->
<!-- 				<a href="#"><span class="glyphicon glyphicon-log-in"></span> -->
<!-- 					Login</a> -->
<!-- 			</button> -->
<!-- 		</div> -->
      
      
</div>
</nav>