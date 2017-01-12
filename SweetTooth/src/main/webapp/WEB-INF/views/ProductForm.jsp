<%@ include file="Header.jsp" %>
<script>
function toggle()
{
	if(document.getElementById("buttonToggle").value == "Show List")
	{
		document.getElementById("productTable").style.display = "block";
		document.getElementById("productTable").style.visibility = "visible";
		document.getElementById("buttonToggle").value = "Hide List";
	}
	else
	{
		document.getElementById("productTable").style.display = "none";
		document.getElementById("productTable").style.visibility = "hidden";
		document.getElementById("buttonToggle").value = "Show List";
	}
}
</script>
<style>
#productTable
{
display: none;
max-width:1150px;
}
</style>
<div align="center">
<h1>
<p style="font-size: x-large;">PRODUCT REGISTRATION FORM</p>
</h1>
</div>
<div ng-app="app" ng-controller="myCtrl" align="left">
<div align="center">
<form:form enctype="multipart/form-data" modelAttribute="product" action="addProduct">
<form:input type="hidden" path="productId"/>
<div class='kickass_field'>
          <form:input path="productName" maxlength='30' required='required'/>
          <lable>
            <i>PRODUCT NAME</i>
          </lable>
        </div>
<div class='kickass_field'>        
			<form:input path="productDescription" maxlength='30' required='required'/>
          <lable>
            <i>PRODUCT DESCRIPTION</i>
          </lable>
        </div>
<div class='kickass_field'>
          <form:input path="productPrice" maxlength='30' required='required'/>
          <lable>
            <i>PRODUCT PRICE</i>
          </lable>
        </div>
<div class='kickass_field'>        
			<form:input path="productDiscount" maxlength='30' required='required'/>
          <lable>
            <i>PRODUCT DISCOUNT</i>
          </lable>
        </div>
<div class='kickass_field'>
          <form:input path="productQuantity" maxlength='30' required='required'/>
          <lable>
            <i>PRODUCT QUANTITY</i>
          </lable>
        </div>
<div class="kickass_field">
<form:select path="category.categoryName">
<form:options items="${categoryList}" itemValue="categoryName" itemLabel="categoryName"/>
</form:select>
</div>
<div class="kickass_field">
<form:select path="subCategory.subCategoryName">
<form:options items="${subCategoryList}" itemValue="subCategoryName" itemLabel="subCategoryName"/>
</form:select>
</div>
<div class="kickass_field">
<form:select path="baker.bakerName">
<form:options items="${bakerList}" itemValue="bakerName" itemLabel="bakerName"/>
</form:select>
</div>
<c:if test="${!empty product.productName && !empty product.productDescription && !empty product.productQuantity && !empty product.productDiscount && !empty product.productPrice}">
<input type="submit" value="Edit Product"/>
</c:if>
<c:if test="${empty product.productName || empty product.productDescription || empty product.productQuantity || empty product.productDiscount || empty product.productPrice}">
<input type="submit" value="Add Product"/>
<input type="button" id="buttonToggle" value="Show List" onclick="toggle()"/>
</c:if>
<div>
<form:input type="file" path="productImage"/>
</div>
</form:form>
</div>
<div align="center" class="table-responsive">
<table class="table table-hover table-condensed table-sm" id="productTable">
<tr>
<td>
<input type="text" ng-model="find" placeholder="Search"/>
</td>
</tr>
<tr>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='productId'; sortReverse = !sortReverse" value="PRODUCT ID">
<span ng-show="sortType == 'productId' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'productId' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='productName'; sortReverse = !sortReverse" value="PRODUCT NAME">
<span ng-show="sortType == 'productName' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'productName' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='productDescription'; sortReverse = !sortReverse" value="PRODUCT DESCRIPTION">
<span ng-show="sortType == 'productDescription' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'productDescription' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='productQuantity'; sortReverse = !sortReverse" value="PRODUCT QUANTITY">
<span ng-show="sortType == 'productQuantity' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'productQuantity' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='productDiscount'; sortReverse = !sortReverse" value="PRODUCT DISCOUNT">
<span ng-show="sortType == 'productDiscount' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'productDiscount' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='productPrice'; sortReverse = !sortReverse" value="PRODUCT PRICE">
<span ng-show="sortType == 'productPrice' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'productPrice' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" value="DELETE"/>
</td>
<td>
<input input type="button" class="btn btn-link" value="EDIT"/>
</td>
</tr>
<tr ng-repeat="pList in jsonData | filter: find | orderBy:sortType:sortReverse">
<td>{{pList.productId}}</td>
<td>{{pList.productName}}</td>
<td>{{pList.productDescription}}</td>
<td>{{pList.productQuantity}}</td>
<td>{{pList.productDiscount}}</td>
<td>{{pList.productPrice}}</td>
<td><a href="deleteProduct-{{pList.productId}}"><i class="fa fa-times"></i></a></td>
<td><a href="editProduct-{{pList.productId}}"><i class="fa fa-pencil"></i></a></td>
</tr>
</table>
</div>
<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller("myCtrl",function ($scope){
	$scope.jsonData = ${productList};
});
</script>
</div>
<%@ include file="Footer.jsp" %>