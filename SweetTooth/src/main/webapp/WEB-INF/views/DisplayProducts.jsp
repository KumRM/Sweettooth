<%@ include file="Header.jsp" %>
<div class="page-header">
<h1 align="center">
<p style="font-size: xx-large;font-weight:900; font-family: sans-serif; color: purple;">ALL PRODUCTS</p>
</h1>
</div>
<div class="breadcrumbs">
<div class="container-fluid">
<div class="breadcrumbs-main">
<ol class="breadcrumb">
<li><a href="/SweetTooth/">Home</a></li>
<li class="active"><a href="/SweetTooth/allProducts">All Products</a></li>
</ol>
</div>
</div>
</div>
<div class="container" ng-app="app" ng-controller="myCtrl">
<div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav" style="margin-left:0;">
                <li class="sidebar-brand">
                    
<a href="#menu-toggle"  id="menu-toggle" style="margin-top:0px;float:right;" > <i class="fa fa-bars " style="font-size:20px !Important;"></i> 
                    
                </li>
                <li>
                    <a href="#"><i class="fa fa-sort-alpha-asc "> </i> <span style="margin-left:10px;">Section</span>  </a>
                </li>
                <li>
                    <a href="#"> <i class="fa fa-play-circle-o "> </i> <span style="margin-left:10px;"> Section</span> </a>
                </li>
                <li>
                    <a href="#"> <i class="fa fa-puzzle-piece"> </i> <span style="margin-left:10px;"> Section</span> </a>
                </li>
                <li>
                    <a href="#"> <i class="fa fa-font"> </i> <span style="margin-left:10px;"> Section</span> </a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-info-circle"> </i> <span style="margin-left:10px;">Section </span> </a>
                </li>
                <li>
                    <a href="#"> <i class="fa fa-comment-o"> </i> <span style="margin-left:10px;"> Section</span> </a>
                </li>
            </ul>
        </div>                        
                        
</a>
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
</div>

<!-- <div class="col-md-4"> -->
<!-- </div> -->
<div class="row">
<div class="col-md-6" ng-repeat="aP in allProducts">
<div class="product-item">
              <div class="pic">
                <img src="resources/Images/{{aP.productId}}.jpg" alt="Berry Lace Dress">
              </div>
              <h3>
              <a href="shop-item.html">{{aP.productName}}</a>
              </h3>
              <div class="pi-price">{{aP.productPrice}}</div>
              <a href="addToWishList-{{aP.productId}}?userId=1" class="btn btn-warning fa fa-heart"></a>
              <a href="viewProduct-{{aP.productId}}" class="btn add2cart">View</a>
              <a href="buyNow-{{aP.productId}}?userId=1" class="btn add2cart">buy now</a>
              <a href="addToCart-{{aP.productId}}?userId=1" class="btn add2cart">Add to cart</a>
              <div class="sticker sticker-new"></div>
            </div>
</div>
</div>
<!-- <div class="col-md-4"> -->
<!-- <div class="product-item"> -->
<!--               <div class="pic"> -->
<!--                 <img src="resources/Images/{{aP.productId}}.jpg" class="img-responsive" alt="Berry Lace Dress"> -->
<!--               </div> -->
<!--               <h3><a href="shop-item.html">{{aP.productName}}</a></h3> -->
<!--               <div class="pi-price">{{aP.productPrice}}</div> -->
<!--               <a href="addToWishList-{{aP.productId}}?userId=1" class="btn btn-warning fa fa-heart"></a> -->
<!--               <a href="viewProduct-{{aP.productId}}" class="btn add2cart">View</a> -->
<!--               <a href="buyNow-{{aP.productId}}?userId=1" class="btn add2cart">buy now</a> -->
<!--               <a href="addToCart-{{aP.productId}}?userId=1" class="btn add2cart">Add to cart</a> -->
<!--               <div class="sticker sticker-new"></div> -->
<!--             </div> -->
<!-- </div> -->
<!-- </div> -->
<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller("myCtrl",function ($scope){
	$scope.allProducts= ${allproducts};
});
</script>
</div>
<%@ include file="Footer.jsp" %>