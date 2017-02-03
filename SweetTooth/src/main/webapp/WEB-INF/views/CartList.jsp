<%@ include file="Header.jsp"  %>
<div class="page-header">
<h2 align="center">
<p style="font-size: smaller; color: #823f3f;">ORDER DETAILS</p>
</h2>
</div>
<div ng-app="app" ng-controller="myCtrl" class="card">
<!-- <div class="container-fluid table-responsive"> -->
<!-- <table class="table table-hover table-condensed"> -->
<!-- 			<tr> -->
<!--                 <td>PRODUCT NAME</td> -->
<!--                 <td>PRODUCT DISCOUNT</td> -->
<!--                 <td>PRODUCT QUANTITY</td> -->
<!--                 <td>PRODUCT PRICE</td> -->
<!--                 <td>GRAND TOTAL</td> -->
<!--             </tr> -->
<!-- 			<tr> -->
<!-- 				<td>{{cL.productName}}</td> -->
<!--                 <td>{{cL.productDiscount}}</td> -->
<!--                 <td>{{cL.productQuantity}}</td> -->
<!--                 <td>{{cL.productPrice}}</td> -->
<!--                 <td>{{cL.productPrice * cL.productQuantity}}</td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--             <td> -->
<%--             	<a class="btn btn-warning" href="checkout?userId=${sessionScope.userId}"> --%>
<!--             		<b style="color: #823f3f;">CHECKOUT</b> -->
<!--             	</a> -->
<!--             </td> -->
<!--             </tr> -->
<!-- </table> -->
<!-- </div> -->
<div class="container text-center">

			


<div class="col-md-5 col-sm-12">

<h1>Your shopping cart</h1>

<p>
This is a free and 
<b>
<a href="http://tutorialzine.com/2014/04/responsive-shopping-cart-layout-twitter-bootstrap-3/" title="Read the article!">
responsive shopping cart layout, made by Tutorialzine
</a>
</b>
. It looks nice on both desktop and mobile browsers. Try it by resizing your window (or opening it on your smartphone and pc).
</p>
			
</div>
			
			

<div class="col-md-7 col-sm-12 text-left">
				
<ul style="padding-left: 0%">
					

<li  class="row list-inline columnCaptions">
						

<span>QTY</span>

<span>NAME</span>

<span>DISCOUNT</span>

<span>PRICE</span>

<span>EDIT</span>
<!-- <span>GRAND TOTAL</span> -->
					
</li>
					
<li class="row">
						
<span class="quantity">{{cL.productQuantity}}</span>
						
<span class="itemName">{{cL.productName}}</span>
						
<!-- <span class="popbtn"><a class="arrow"></a></span> -->
						
<!-- <span class="price">{{cL.productDiscount}}</span>						 -->

<span class="price">{{cL.productPrice}}</span>

<span class="price glyphicon glyphicon-trash" style="padding-left: 18%"></span>
</li>				
															
<li class="row totals">
						
<span class="itemName">Total:</span>
						
<span class="price">{{cL.productPrice * cL.productQuantity}}</span>
						
<span class="order"> 
<!-- <a class="text-center">ORDER</a> -->
<a href="checkout?userId=${sessionScope.userId}" class="btn btn-warning">
        <b style="color: #823f3f;">CHECKOUT</b>
</a>
</span>
					
</li>
				

</ul>
			
</div>

		

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