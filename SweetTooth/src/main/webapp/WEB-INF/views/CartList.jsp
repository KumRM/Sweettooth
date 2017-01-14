<%@ include file="Header.jsp"  %>
<div align="center">
<h1>
<p style="font-size: x-large;">ORDER DETAILS PAGE</p>
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
			<tr>
				<td>{{cL.productName}}</td>
                <td>{{cL.productDiscount}}</td>
                <td>{{cL.productQuantity}}</td>
                <td>{{cL.productPrice}}</td>
                <td>{{cL.productPrice * cL.productQuantity}}</td>
            </tr>
            <tr>
            <td>
            <button type="button" class="btn btn-warning">
            	<a href="checkout?userId=${sessionScope.userId}">CHECKOUT</a>
            </button>
            </td>
            </tr>
</table>
</div>
<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller
("myCtrl",function ($scope)
	{
	$scope.cL = ${cartList};
	}
);
</script>
</div>
<%@ include file="Footer.jsp"  %>