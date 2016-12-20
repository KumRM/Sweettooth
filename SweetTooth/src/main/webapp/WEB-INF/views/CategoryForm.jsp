<%@ include file="Header.jsp" %>
<script>
function toggle()
{
	if(document.getElementById("buttonToggle").value == "Show List")
	{
		document.getElementById("categoryTable").style.display = "block";
		document.getElementById("categoryTable").style.visibility = "visible";
		document.getElementById("buttonToggle").value = "Hide List";
	}
	else
	{
		document.getElementById("categoryTable").style.display = "none";
		document.getElementById("categoryTable").style.visibility = "hidden";
		document.getElementById("buttonToggle").value = "Show List";
	}
}
</script>
<style>
#categoryTable
{
display: none;
max-width: 600px;
}
</style>
<div ng-app="app" ng-controller="myCtrl" align="center">
<form:form modelAttribute="category" action="addCategory">
<form:input type="hidden" path="categoryId"/>
<form:input path="categoryName" placeholder="Enter Category Name"/>
<form:errors path="categoryName"/><br>
<form:input path="categoryDescription" placeholder="Enter Category Description"/>
<form:errors path="categoryDescription"/><br>
<c:if test="${!empty category.categoryName}">
<input type="submit" value="Edit Category"/>
</c:if>
<c:if test="${empty category.categoryName}">
<input type="submit" value="Add Category"/>
<input type="button" id="buttonToggle" value="Show List" onclick="toggle()"/>
</c:if>
<tr>
<td><input type="text" ng-model="find" placeholder="Search"/></td>
</tr>
</form:form>
<table id="categoryTable">
<tr>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='categoryId'; sortReverse = !sortReverse" value="CATEGORY ID">
<span ng-show="sortType == 'categoryId' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'categoryId' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='categoryName'; sortReverse = !sortReverse" value="CATEGORY NAME">
<span ng-show="sortType == 'categoryName' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'categoryName' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='categoryDescription'; sortReverse = !sortReverse" value="CATEGORY DESCRIPTION">
<span ng-show="sortType == 'categoryDescription' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'categoryDescription' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" value="DELETE"/>
</td>
<td>
<input input type="button" class="btn btn-link" value="EDIT"/>
</td>
</tr>
<tr ng-repeat="cList in jsonData | filter:find | orderBy:sortType:sortReverse">
<td>{{cList.categoryId}}</td>
<td>{{cList.categoryName}}</td>
<td>{{cList.categoryDescription}}</td>
<td><a href="deleteCategory-{{cList.categoryId}}">Delete</a></td>
<td><a href="editCategory-{{cList.categoryId}}">Edit</a></td>
</tr>
</table>
<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller("myCtrl",function ($scope){
	$scope.jsonData = ${categoryList};
});
</script>
</div>
<%@ include file="Footer.jsp" %>