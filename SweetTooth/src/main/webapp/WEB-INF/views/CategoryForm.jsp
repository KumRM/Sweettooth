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
max-width: 750px;
}
</style>
<div class="page-header">
<!-- style="background-image: url('resources/Images/background-with-chocolate-cake-macarons.jpg');" -->
<h2 align="center">
<p style="font-size: smaller; color: #823f3f;">Category Registration Form</p>
</h2>
</div>
<div ng-app="app" ng-controller="myCtrl" align="center">
<div align="center">
<!-- <fieldset> -->
<form:form modelAttribute="category" action="addCategory">
<form:input type="hidden" path="categoryId"/>
<!-- <div class='kickass_field'> -->
<%--           <form:input path="categoryName" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>CATEGORY NAME</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'>         -->
<%-- 			<form:input path="categoryDescription" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>CATEGORY DESCRIPTION</i> -->
<!--           </lable> -->
<!--         </div> -->
<form:errors path="categoryName"/>
<form:input path="categoryName" placeholder="Enter Category Name"/>
<form:errors path="categoryDescription"/>
<form:input path="categoryDescription" placeholder="Enter Category Description"/>
<c:if test="${!empty category.categoryName && !empty category.categoryDescription}">
<input type="submit" value="Edit Category"/>
</c:if>
<c:if test="${empty category.categoryName || empty category.categoryDescription}">
<input type="submit" value="Add Category"/>
<input type="button" id="buttonToggle" value="Show List" onclick="toggle()"/>
</c:if>
</form:form>
<!-- </fieldset> -->
</div>
<div align="center" class="table-responsive">
<table class="table table-hover table-condensed table-sm" id="categoryTable">
<tr>
<td align="right">
<input type="text" ng-model="find" placeholder="Search"/>
</td>
</tr>
<tr align="left">
<td>
<input type="button" class="btn btn-warning" ng-click="sortType='categoryId'; sortReverse = !sortReverse" value="CATEGORY ID">
<span ng-show="sortType == 'categoryId' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'categoryId' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-warning" ng-click="sortType='categoryName'; sortReverse = !sortReverse" value="CATEGORY NAME">
<span ng-show="sortType == 'categoryName' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'categoryName' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-warning" ng-click="sortType='categoryDescription'; sortReverse = !sortReverse" value="CATEGORY DESCRIPTION">
<span ng-show="sortType == 'categoryDescription' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'categoryDescription' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-warning" value="DELETE"/>
</td>
<td>
<input input type="button" class="btn btn-warning" value="EDIT"/>
</td>
</tr>
<tr ng-repeat="cList in jsonData | filter:find | orderBy:sortType:sortReverse">
<td>{{cList.categoryId}}</td>
<td>{{cList.categoryName}}</td>
<td>{{cList.categoryDescription}}</td>
<td><a href="deleteCategory-{{cList.categoryId}}"><span class="glyphicon glyphicon-trash"></span></a></td>
<td><a href="editCategory-{{cList.categoryId}}"><span class="glyphicon glyphicon-pencil"></span></a></td>
</tr>
</table>
</div>
<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller("myCtrl",function ($scope){
	$scope.jsonData = ${categoryJsonList};
});
</script>
</div>
<%@ include file="Footer.jsp" %>