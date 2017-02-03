<%@ include file="Header.jsp"  %>
<div class="page-header">
<h2 align="center">
<p style="font-size: smaller; color: #823f3f;">YOUR BOX</p>
</h2>
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
			<tr ng-repeat="sL in showList">
				<td>{{sL.productName}}</td>
                <td>{{sL.productDiscount}}</td>
                <td>{{sL.productQuantity}}</td>
                <td>{{sL.productPrice}}</td>
                <td>{{sL.productPrice * sL.productQuantity}}</td>
            </tr>
            <tr>
            <td>
            <a class="btn btn-warning" href="checkout?userId=${sessionScope.userId}">
            		<b style="color: #823f3f;">CHECKOUT</b>
            	</a>
            </td>
            </tr>
</table>
</div>
<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller
("myCtrl",function ($scope)
	{
	$scope.showList = ${showList};
	}
);
</script>
</div>
<%@ include file="Footer.jsp"  %>