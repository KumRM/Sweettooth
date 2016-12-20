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
max-width: 600px;
}
</style>
<div ng-app="app" ng-controller="myCtrl" align="center">
<form:form enctype="multipart/form-data" modelAttribute="product" action="addProduct">
<form:input type="hidden" path="productId"/>
<form:input path="productName" placeholder="Enter Product Name"/>
<form:errors path="productName"/><br>
<form:input path="productDescription" placeholder="Enter Product Description"/>
<form:errors path="productDescription"/><br>
<form:input path="productQuantity" placeholder="Enter Product Quantity"/>
<form:errors path="productQuantity"/><br>
<form:input path="productDiscount" placeholder="Enter Product Discount"/>
<form:errors path="productDiscount"/><br>
<form:input path="productPrice" placeholder="Enter Product Price"/>
<form:errors path="productPrice"/><br>
<form:select path="category.categoryName">
<form:options items="${categoryList}" itemValue="categoryName" itemLabel="categoryName"/>
</form:select>
<form:select path="subCategory.subCategoryName">
<form:options items="${subCategoryList}" itemValue="subCategoryName" itemLabel="subCategoryName"/>
</form:select>
<form:select path="baker.bakerName">
<form:options items="${bakerList}" itemValue="bakerName" itemLabel="bakerName"/>
</form:select>
<c:if test="${!empty product.productName && !empty product.productDescription && !empty product.productQuantity && !empty product.productDiscount && !empty product.productPrice}">
<input type="submit" value="Add Product"/>
</c:if>
<c:if test="${empty product.productName || empty product.productDescription || empty product.productQuantity || empty product.productDiscount || empty product.productPrice}">
<input type="submit" value="Add Product"/>
<input type="button" id="buttonToggle" value="Show List" onclick="toggle()"/>
</c:if>
<form:input type="file" path="productImage"/>
<tr>
<td><input type="text" ng-model="find" placeholder="Search"/></td>
</tr>
</form:form>
<table id="productTable">
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
<td><a href="deleteProduct-{{pList.productId}}">Delete</a></td>
<td><a href="editProduct-{{pList.productId}}">Edit</a></td>
</tr>
</table>
<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller("myCtrl",function ($scope){
	$scope.jsonData = ${productList};
});
</script>
</div>
<%@ include file="Footer.jsp" %>