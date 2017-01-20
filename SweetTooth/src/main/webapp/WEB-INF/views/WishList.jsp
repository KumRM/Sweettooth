<%@ include file="Header.jsp"  %>
<div align="center">
<h1>
<p style="font-size: x-large;">WISH LIST PAGE</p>
</h1>
</div>
<div ng-app="app" ng-controller="myCtrl" class="card">
<div class="container-fluid table-responsive">
<table class="table table-hover table-condensed">
			<tr>
                <td>PRODUCT NAME</td>
                <td>PRODUCT DISCOUNT</td>
                <td>PRODUCT QUANTITY</td>
                <td>PRODUCT PRICE</td>
                <td>GRAND TOTAL</td>
            </tr>
			<tr ng-repeat="wL in wishList">
				<td>{{wL.productName}}</td>
                <td>{{wL.productDiscount}}</td>
                <td>{{wL.productQuantity}}</td>
                <td>{{wL.productPrice}}</td>
                <td>{{wL.productPrice * wL.productQuantity}}</td>
                <td>
            	<a href="buyNow-{{wL.productId}}?userId=1">Add To Cart</a>
            	</td>
            </tr>
            <tr>
            </tr>
</table>
</div>
<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller
("myCtrl",function ($scope)
	{
	$scope.wishList = ${wishList};
	}
);
</script>
</div>
<%@ include file="Footer.jsp"  %>