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
      	<div class="form-inline	">
        <a class="btn btn-warning" href="/SweetTooth/">
        <b style="color: #823f3f;">HOME</b>
<!--         <input type="button" class="btn btn-default" value="Home"> -->
<!--         </input> -->
        </a>
        <a href="#" class="dropdown-toggle btn btn-warning dropdown" data-toggle="dropdown">        
        <b style="color: #823f3f;">PRODUCTS</b>
        <span style="color: #823f3f;" class="glyphicon glyphicon-menu-hamburger"></span>
<!--         <input type="button" class="dropdown-toggle" value=""> -->
        <ul class="dropdown-menu mega-dropdown-menu row">
					<li class="col-sm-4">
						<ul>
							<li class="dropdown-header">New in Stores</li>                            
<!--                             <div id="myCarousel" class="carousel slide" data-ride="carousel"> -->
<!--                               <div class="carousel-inner"> -->
<!--                                 <div class="item active"> -->
<!--                                     <a href="#"><img src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection" class="img-responsive" alt="product 1"></a> -->
<!--                                     <h4><small>Summer dress floral prints</small></h4>                                         -->
<!--                                     <button class="btn btn-primary" type="button">49,99 </button> <button href="#" class="btn btn-default" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</button>        -->
<!--                                 </div>End Item -->
<!--                                 <div class="item"> -->
<!--                                     <a href="#"><img src="http://placehold.it/254x150/ef5e55/f5f5f5/&text=New+Collection" class="img-responsive" alt="product 2"></a> -->
<!--                                     <h4><small>Gold sandals with shiny touch</small></h4>                                         -->
<!--                                     <button class="btn btn-primary" type="button">9,99 </button> <button href="#" class="btn btn-default" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</button>         -->
<!--                                 </div>End Item -->
<!--                                 <div class="item"> -->
<!--                                     <a href="#"><img src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection" class="img-responsive" alt="product 3"></a> -->
<!--                                     <h4><small>Denin jacket stamped</small></h4>                                         -->
<!--                                     <button class="btn btn-primary" type="button">49,99 </button> <button href="#" class="btn btn-default" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</button>       -->
<!--                                 </div>End Item                                 -->
<!--                               </div>End Carousel Inner -->
<!--                             </div> -->
<!--                             /.carousel -->
                            <li class="divider"></li>
                            <li><a href="#">View all Collection <span class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
						</ul>
					</li>
<!-- 					<li class="col-sm-3"> -->
<!-- 						<ul> -->
<!-- 							<li class="dropdown-header">Jackets</li> -->
<!-- 							<li><a href="#">Easy to customize</a></li> -->
<!-- 							<li><a href="#">Glyphicons</a></li> -->
<!-- 							<li><a href="#">Pull Right Elements</a></li> -->
<!-- 							<li class="divider"></li> -->
<!-- 							<li class="dropdown-header">Pants</li> -->
<!-- 							<li><a href="#">Coloured Headers</a></li> -->
<!-- 							<li><a href="#">Primary Buttons & Default</a></li> -->
<!-- 							<li><a href="#">Calls to action</a></li> -->
<!-- 						</ul> -->
<!-- 					</li> -->
					<li class="col-sm-4">
					<c:forEach items="${categoryListDrop}" var="category">
						<ul class="dropdown-header">
						<li href="#">${category.categoryName}</li>
						<c:forEach items="${category.subCategorySet}" var="subCategory">
						<li><a>${subCategory.subCategoryName}</a></li>
						</c:forEach>
						</ul>
						</c:forEach>
					</li>
					<li class="col-sm-4">
						<ul>
							<li class="dropdown-header">Accessories</li>
							<li><a href="#">Default Navbar</a></li>
							<li><a href="#">Lovely Fonts</a></li>
							<li><a href="#">Responsive Dropdown </a></li>							
							<li class="divider"></li>
                            <li class="dropdown-header">Newsletter</li>
                            <form class="form" role="form">
                              <div class="form-group">
                                <label class="sr-only" for="email">Email address</label>
                                <input type="email" class="form-control" id="email" placeholder="Enter email">                                                              
                              </div>
<!--                               <button type="submit" class="btn btn-primary btn-block">Sign in</button> -->
                            </form>                                                       
						</ul>
					</li>
				</ul>				
<!--         </input> -->
        </a>
        <a href="#" class="btn btn-warning">
        <b style="color: #823f3f;">CUSTOMERS</b>
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
        <a href="#" class="dropdown-toggle btn btn-warning" data-toggle="dropdown">
        <span style="color: #823f3f;" class="glyphicon glyphicon-circle-arrow-down"></span>
        </a>
        <ul class="dropdown-menu">
			<li><a href="CategoryForm">CATEGORY</a></li>
        	<li><a href="SubCategoryForm">SUB-CATEGORY</a></li>
        	<li><a href="BakerForm">BAKER</a></li>
        	<li><a href="ProductForm">PRODUCT</a></li>
        </ul>
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


<!-- <nav class="navbar navbar-fixed-top"> -->
<!-- <div class="container"> -->
<!--     <div class="navbar-header"> -->
<!--     	<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse"> -->
<!-- 			<span class="sr-only">Toggle navigation</span> -->
<!-- 			<span class="icon-bar"></span> -->
<!-- 			<span class="icon-bar"></span> -->
<!-- 			<span class="icon-bar"></span> -->
<!-- 		</button> -->
<!-- 		<a class="navbar-brand" href="#">MegaMenu</a> -->
<!-- 	</div> -->
	
	
<!-- 	<div class="collapse navbar-collapse js-navbar-collapse"> -->
<!-- 		<ul class="nav navbar-nav"> -->
<!-- 			<li class="dropdown mega-dropdown"> -->
<!-- 				<a href="/">Home</a> -->
<!-- 				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Collection <span class="glyphicon glyphicon-chevron-down pull-right"></span></a> -->
<!-- 				<a href="#">Customers</a> -->
<!-- 				<a href="#">Talk To Us</a> -->
<!-- 				<ul class="dropdown-menu mega-dropdown-menu row"> -->
<!-- 					<li class="col-sm-3"> -->
<!-- 						<ul> -->
<!-- 							<li class="dropdown-header">New in Stores</li>                             -->
<!--                             <div id="myCarousel" class="carousel slide" data-ride="carousel"> -->
<!--                               <div class="carousel-inner"> -->
<!--                                 <div class="item active"> -->
<!--                                     <a href="#"><img src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection" class="img-responsive" alt="product 1"></a> -->
<!--                                     <h4><small>Summer dress floral prints</small></h4>                                         -->
<!--                                     <button class="btn btn-primary" type="button">49,99</button> <button href="#" class="btn btn-default" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</button>        -->
<!--                                 </div>End Item -->
<!--                                 <div class="item"> -->
<!--                                     <a href="#"><img src="http://placehold.it/254x150/ef5e55/f5f5f5/&text=New+Collection" class="img-responsive" alt="product 2"></a> -->
<!--                                     <h4><small>Gold sandals with shiny touch</small></h4>                                         -->
<!--                                     <button class="btn btn-primary" type="button">9,99</button> <button href="#" class="btn btn-default" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</button>         -->
<!--                                 </div>End Item -->
<!--                                 <div class="item"> -->
<!--                                     <a href="#"><img src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection" class="img-responsive" alt="product 3"></a> -->
<!--                                     <h4><small>Denin jacket stamped</small></h4>                                         -->
<!--                                     <button class="btn btn-primary" type="button">49,99</button> <button href="#" class="btn btn-default" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</button>       -->
<!--                                 </div>End Item                                 -->
<!--                               </div>End Carousel Inner -->
<!--                             </div>/.carousel -->
<!--                             <li class="divider"></li> -->
<!--                             <li><a href="#">View all Collection <span class="glyphicon glyphicon-chevron-right pull-right"></span></a></li> -->
<!-- 						</ul> -->
<!-- 					</li> -->
<!-- 					<li class="col-sm-3"> -->
<!-- 						<ul> -->
<!-- 							<li class="dropdown-header">Dresses</li> -->
<!-- 							<li><a href="#">Unique Features</a></li> -->
<!-- 							<li><a href="#">Image Responsive</a></li> -->
<!-- 							<li><a href="#">Auto Carousel</a></li> -->
<!-- 							<li><a href="#">Newsletter Form</a></li> -->
<!-- 							<li><a href="#">Four columns</a></li> -->
<!-- 							<li class="divider"></li> -->
<!-- 							<li class="dropdown-header">Tops</li> -->
<!-- 							<li><a href="#">Good Typography</a></li> -->
<!-- 						</ul> -->
<!-- 					</li> -->
<!-- 					<li class="col-sm-3"> -->
<!-- 						<ul> -->
<!-- 							<li class="dropdown-header">Jackets</li> -->
<!-- 							<li><a href="#">Easy to customize</a></li> -->
<!-- 							<li><a href="#">Glyphicons</a></li> -->
<!-- 							<li><a href="#">Pull Right Elements</a></li> -->
<!-- 							<li class="divider"></li> -->
<!-- 							<li class="dropdown-header">Pants</li> -->
<!-- 							<li><a href="#">Coloured Headers</a></li> -->
<!-- 							<li><a href="#">Primary Buttons & Default</a></li> -->
<!-- 							<li><a href="#">Calls to action</a></li> -->
<!-- 						</ul> -->
<!-- 					</li> -->
<!-- 					<li class="col-sm-3"> -->
<!-- 						<ul> -->
<!-- 							<li class="dropdown-header">Accessories</li> -->
<!-- 							<li><a href="#">Default Navbar</a></li> -->
<!-- 							<li><a href="#">Lovely Fonts</a></li> -->
<!-- 							<li><a href="#">Responsive Dropdown </a></li>							 -->
<!-- 							<li class="divider"></li> -->
<!--                             <li class="dropdown-header">Newsletter</li> -->
<%--                             <form class="form" role="form"> --%>
<!--                               <div class="form-group"> -->
<!--                                 <label class="sr-only" for="email">Email address</label> -->
<!--                                 <input type="email" class="form-control" id="email" placeholder="Enter email">                                                               -->
<!--                               </div> -->
<!--                               <button type="submit" class="btn btn-primary btn-block">Sign in</button> -->
<%--                             </form>                                                        --%>
<!-- 						</ul> -->
<!-- 					</li> -->
<!-- 				</ul> -->
<!-- 			</li> -->
<!-- 		</ul> -->
		
<!-- 	</div>/.nav-collapse -->
<!-- 	</div> -->
<!-- </nav> -->







<!-- </div> -->
      
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