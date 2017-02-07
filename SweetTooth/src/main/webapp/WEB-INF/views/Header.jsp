<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> --%>
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
  <script src="resources/js/social.page.js"></script>
  <script src="resources/js/jquery-3.1.0.min.js"></script>
  <script src="resources/js/jquery.autocomplete.min.js"></script>
  
  <!-- ============AUTOCOMPLETE============== -->
<script>
  $(document).ready(function() {

	$('#w-input-search').autocomplete({
		serviceUrl: '${pageContext.request.contextPath}/getTags',
		paramName: "tagName",
		delimiter: ",",
	   transformResult: function(response) {

		return {
		  //must convert json to javascript object before process
		  suggestions: $.map($.parseJSON(response), function(item) {

		      return { value: item.productName, data: item.productId };
		   })

		 };

            }

	 });

  });
  </script>
  
<title>SweetTooth</title>

</head>
<body>
<!--   <div class="container"> -->
  <!-- CODE FOR NAVBAR -->
<nav class="navbar navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span style="color: #eea236; height: 50%; width: 50%" class="glyphicon glyphicon-triangle-bottom"></span>
      </button>
	<img style="height: 35pt; width: 35pt" href="/SweetTooth/" alt="SweetTooth" src="resources/Images/logo.png"/>
    </div>
    <div class="collapse navbar-collapse form-inline" id="myNavbar">
      <ul class="nav navbar-nav">
      	<li class="mega-dropdown">
      	<div class="form-inline">
        <a class="btn btn-warning" href="/SweetTooth/">
        <b style="color: #823f3f;">HOME</b>
<!--         <input type="button" class="btn btn-default" value="Home"> -->
<!--         </input> -->
        </a>
        <input type="button" href="#" class="dropdown-toggle btn btn-warning dropdown" data-toggle="dropdown" style="color: #823f3f; font-weight: bolder;" value="PRODUCTS">        
        <ul style="background-color: #f0ad4e; border-bottom-color: #823f3f" class="dropdown-menu mega-dropdown-menu row">
							<li class="col-sm-4">
							<a href="#" style="color: #823f3f">
							<b>
                            View all Products.
                            </b>
                            <span class="glyphicon glyphicon-chevron-right pull-right"></span>
                            </a>
							<ul>
							<li class="divider"></li>
                            <li class="dropdown-header">Newsletter</li>
                            <form class="form" role="form">
                              <div class="form-group">
                                <label class="sr-only" for="email">Email address</label>
                                <input type="email" class="form-control" id="email" placeholder="Enter email">                                                              
                              </div>
                            </form>
                            </ul>
                            </li>
					<c:forEach items="${categoryListDrop}" var="category">
					<li class="col-sm-2">
						<ul class="dropdown-header">
						<li href="#">${category.categoryName}</li>
						<c:forEach items="${category.subCategorySet}" var="subCategory">
						<li>
						<a>${subCategory.subCategoryName}</a>
						</li>
						</c:forEach>
						</ul>
					</li>
					</c:forEach>
<!-- 					<li class="col-sm-3"> -->
<!-- 						<ul> -->
<!-- 							<li class="dropdown-header">Accessories</li> -->
<!-- 							<li><a href="#">Default Navbar</a></li> -->
<!-- 							<li><a href="#">Lovely Fonts</a></li> -->
<!-- 							<li><a href="#">Responsive Dropdown </a></li>                                                        -->
<!-- 						</ul> -->
<!-- 					</li> -->
				</ul>				
        </input>
        <a href="#" class="btn btn-warning">
        <b style="color: #823f3f;">CUSTOMERS SPEAK</b>
<!--         <input type="button" class="btn btn-default" value="Customers"> -->
<!--         </input>  -->
        </a>
        <a href="#" class="btn btn-warning">
        <b style="color: #823f3f;">ABOUT US</b>
<!--         <input type="button" class="btn btn-default" value="Customers"> -->
<!--         </input>  -->
        </a>
        <a href="#" class="btn btn-warning">
        <b style="color: #823f3f;">TALK TO US</b>
<!--         <input type="button" class="btn btn-default" value="Talk To Us"> -->
<!--         </input> -->
        </a>
        <c:if test="${!empty pageContext.request.userPrincipal}">
        <sec:authorize access="hasRole('ROLE_ADMIN')">
        <input type="button" href="#" class="dropdown-toggle btn btn-warning dropdown" data-toggle="dropdown" style="color: #823f3f; font-weight: bolder;" value="FORMS">
<!-- 		<b style="color: #823f3f;" class="caret"></b> -->
<!--         <span style="color: #823f3f;" class="glyphicon glyphicon-circle-arrow-down"></span> -->
        <ul class="dropdown-menu">
			<li><a href="CategoryForm">CATEGORY</a></li>
        	<li><a href="SubCategoryForm">SUB-CATEGORY</a></li>
        	<li><a href="BakerForm">BAKER</a></li>
        	<li><a href="ProductForm">PRODUCT</a></li>
        </ul>
        </input>
        </sec:authorize>
        </c:if>
        <span style="font-size: 50px;  background: url(http://static.tumblr.com/ftv85bp/MIXmud4tx/search-icon.png) no-repeat 9px center;">
        <input type="search" id="w-input-search"/>
        </span>
        </div>
        </li>
      </ul>
          <ul class="nav navbar-nav navbar-right">
<!--         <button type="button" class="btn btn-default dropdown"> -->
        <c:if test="${empty pageContext.request.userPrincipal}">
        <a href="reg" class="btn btn-warning">
        <b style="color: #823f3f;">SIGN UP</b>
        <span style="color: #823f3f;" class="glyphicon glyphicon-user"></span>
        </a>
        </c:if>
        <c:if test="${!empty pageContext.request.userPrincipal}">
        <a href="#" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
        <b style="color: #823f3f;">${pageContext.request.userPrincipal.name}</b>
        <span style="color: #823f3f;" class="glyphicon glyphicon-user"></span><b  style="color: #823f3f;" class="caret"></b>
        </a>
        <ul class="dropdown-menu">
        	<li><a href="#">YOUR PROFILE</a></li>
        	<li><a href="#">ORDER HISTORY</a></li>
        	<li><a href="#">YOUR BOX</a></li>
        	<li><a href="#">PRODUCT</a></li>
        </ul>
        </c:if>
        <c:if test="${empty pageContext.request.userPrincipal}">
        <a href="LoginForm" class="btn btn-warning">
        <b style="color: #823f3f;">LOGIN</b>
        <span style="color: #823f3f;" class="glyphicon glyphicon-log-in"></span>
        </a>
        </c:if>
        <c:if test="${!empty pageContext.request.userPrincipal}">
        <a href="#" class="dropdown-toggle btn btn-warning" data-toggle="dropdown">
        <b style="color: #823f3f;">ACCOUNT</b>
        <span style="color: #823f3f;" class="glyphicon glyphicon-log-out"></span><b style="color: #823f3f;" class="caret"></b>
        </a>
        <ul class="dropdown-menu">
        	<li><a href="#">SETTINGS</a></li>
        	<li><a href="logout">LOG OUT</a></li>
        </ul>
        </c:if>
<!--         <a href="#" class="dropdown-toggle btn btn-default" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-gift"></span><span class="caret"></span></a> -->
<!--           <ul class="dropdown-menu dropdown-cart" role="menu"> -->
<!--               <li> -->
<!--                   <span class="item"> -->
<!--                     <span class="item-left"> -->
<!--                         <img src="http://lorempixel.com/50/50/" alt="" /> -->
<!--                         <span class="item-info"> -->
<!--                             <span>Item name</span> -->
<!--                             <span>24$</span> -->
<!--                         </span> -->
<!--                     </span> -->
<!--                     <span class="item-right"> -->
<!--                         <button class="btn btn-xs btn-danger pull-right">x</button> -->
<!--                     </span> -->
<!--                 </span> -->
<!--               </li> -->
<!--               <li class="divider"></li> -->
<!--               <li><a class="text-center" href="">View Cart</a></li> -->
<!--           </ul> -->
      </ul>
    </div>
    </div>
</nav>

<!-- SOCIAL LINKS -->

<div class="a2a_kit a2a_kit_size_32 a2a_floating_style a2a_default_style" style="bottom:0px; right:0px;">
    <a class="a2a_button_facebook"></a>
    <a class="a2a_button_twitter"></a>
    <a class="a2a_button_google_plus"></a>
    <a class="a2a_button_linkedin"></a>
    <a class="a2a_button_pinterest"></a>
    <a class="a2a_dd" href="https://www.addtoany.com/share"></a>
</div>