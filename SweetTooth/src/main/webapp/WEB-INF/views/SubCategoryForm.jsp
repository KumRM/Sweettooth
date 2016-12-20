<%@ include file="Header.jsp" %>
<script>
function toggle()
{
	if(document.getElementById("buttonToggle").value == "Show List")
	{
		document.getElementById("subCategoryTable").style.display = "block";
		document.getElementById("subCategoryTable").style.visibility = "visible";
		document.getElementById("buttonToggle").value = "Hide List";
	}
	else
	{
		document.getElementById("subCategoryTable").style.display = "none";
		document.getElementById("subCategoryTable").style.visibility = "hidden";
		document.getElementById("buttonToggle").value = "Show List";
	}
}
</script>
<style>
#subCategoryTable
{
display: none;
max-width: 600px;
}
</style>
<div ng-app="app" ng-controller="myCtrl" align="center">
<form:form modelAttribute="subCategory" action="addSubCategory">
<form:input type="hidden" path="subCategoryId"/>
<form:input path="subCategoryName" placeholder="Enter Sub-Category Name"/>
<form:errors path="subCategoryName" /><br>
<form:input path="subCategoryDescription" placeholder="Enter Sub-Category Description"/>
<form:errors path="subCategoryDescription"/><br>
<form:select path="category.categoryName" items="${categoryList}" itemValue="categoryName" itemLabel="categoryName" />
<c:if test="${!empty subCategory.subCategoryDescription}">
<input type="submit" value="Edit Sub Category"/>
</c:if>
<c:if test="${empty subCategory.subCategoryDescription}">
<input type="submit" value="Add Sub Category"/>
<input type="button" id="buttonToggle" value="Show List" onclick="toggle()"/>
</c:if>
<tr>
<td><input type="text" ng-model="find" placeholder="Search"/></td>
</tr>
</form:form>
<table id="subCategoryTable">
<tr>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='subCategoryId'; sortReverse = !sortReverse" value="SUB CATEGORY ID">
<span ng-show="sortType == 'subCategoryId' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'subCategoryId' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='subCategoryName'; sortReverse = !sortReverse" value="SUB CATEGORY NAME">
<span ng-show="sortType == 'subCategoryName' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'subCategoryName' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='subCategoryDescription'; sortReverse = !sortReverse" value="SUB CATEGORY DESCRIPTION">
<span ng-show="sortType == 'subCategoryDescription' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'subCategoryDescription' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" value="DELETE"/>
</td>
<td>
<input input type="button" class="btn btn-link" value="EDIT"/>
</td>
</tr>
<tr ng-repeat="scList in jsonData | filter:find | orderBy:sortType:sortReverse">
<td>{{scList.subCategoryId}}</td>
<td>{{scList.subCategoryName}}</td>
<td>{{scList.subCategoryDescription}}</td>
<td><a href="deleteSubCategory-{{scList.subCategoryId}}">Delete</a></td>
<td><a href="editSubCategory-{{scList.subCategoryId}}">Edit</a></td>
</tr>
</table>
<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller("myCtrl",function ($scope){
	$scope.jsonData = ${subCategoryList};
});
</script>
</div>
<%@ include file="Footer.jsp" %>