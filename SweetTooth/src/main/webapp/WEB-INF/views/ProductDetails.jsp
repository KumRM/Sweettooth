<%@ include file="Header.jsp"%>
<div class="page-header">
<h2 align="center">
<p style="font-size: smaller; color: #823f3f;">PRODUCT DETAILS</p>
</h2>
</div>
<div ng-app="app" ng-controller="myCtrl" class="card">
<div class="container-fluid">
<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="resources/Images/{{p.productId}}.jpg" /></div>
						  <h3 class="category-name">CATEGORY: {{p.categoryName}}</h3>
						  <h3 class="sub-category name">SUB-CATEGORY: {{p.subCategoryName}}</h3>
						</div>
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
						<h4 class="price">current price: <span>{{p.productPrice}}</span></h4>
						<h5 class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></h5>
						<h3 class="product-description">ABOUT {{p.productName}}: {{p.productDescription}}</h3>
						
						<form:form modelAttribute="cartItem" action="addToCart-${sessionScope.productId}?userId=1">
						<form:input path="productQuantity" type="number" value="1"/>
							<a type="submit" href="addToWishList-{{p.productId}}?userId=1" class="btn btn-warning fa fa-heart"></a>
								<br/><br/>
							<input type="submit" class="btn btn-warning fa" value="ADD TO BOX"/>
								<br/><br/>
							<a type="submit" href="buyNow-{{p.productId}}?userId=1" class="btn btn-warning"><span class="fa fa-gift"></span></a>
						</form:form>
<!-- 						<h5 class="action"> -->
<!-- 							<a href="addToWishList-{{p.productId}}?userId=1" class="btn btn-warning fa fa-heart"></a> -->
<!-- 							<a type="submit" href="buyNow-{{p.productId}}?userId=1" class="btn btn-warning">BUY NOW</a> -->
<!-- 						</h5> -->
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