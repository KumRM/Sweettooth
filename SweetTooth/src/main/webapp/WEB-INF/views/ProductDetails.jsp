<%@ include file="Header.jsp"%>
<div align="center">
<h1>
<p style="font-size: x-large;">PRODUCT DETAILS PAGE</p>
</h1>
</div>
<div ng-app="app" ng-controller="myCtrl" class="card">
<div class="container-fluid">
<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="resources/Images/{{p.productId}}.jpg" /></div>
						  <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div>
						</div>
<!-- 						<ul class="preview-thumbnail nav nav-tabs"> -->
<!-- 						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li> -->
<!-- 						  <li><a data-target="#pic-2" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li> -->
<!-- 						  <li><a data-target="#pic-3" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li> -->
<!-- 						  <li><a data-target="#pic-4" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li> -->
<!-- 						  <li><a data-target="#pic-5" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li> -->
<!-- 						</ul> -->
						
					</div>
					<div class="details col-md-6">
						<h1 class="product-title">{{p.productName}}</h1>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<h6>41 reviews</h6>
						</div>
						<h3 class="category-name">{{p.categoryName}}</h3>
						<h3 class="sub-category name">{{p.subCategoryName}}</h3>
						<h3 class="product-description">{{p.productDescription}}</h3>
						<h4 class="price">current price: <span>{{p.productPrice}}</span></h4>
						<h5 class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></h5>
						<h5 class="action">
							<a href="addToWishList-{{p.productId}}?userId=1" class="btn btn-warning fa fa-heart"></a>
							<button class="btn btn-success">eggless</button>
							<button class="btn btn-danger">egg</button>
						</h5>
						<form:form modelAttribute="cartItem" action="addToCart-${sessionScope.productId}?userId=1">
						<form:input path="productQuantity" type="number" value="1"/>
						<div>
							<input class="add-to-cart" type="submit" value="add to cart"><span class="glyphicon glyphicon-gift"></span></input>
							<button class="add-to-cart" type="button"><a href="buyNow-{{p.productId}}?userId=1">buy now</a></button>
						</div>
						</form:form>
					</div>
				</div>
				</div>
<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller
("myCtrl",function ($scope)
	{
	$scope.p = ${prd};
	}
);
</script>
</div>
<%@ include file="Footer.jsp"%>