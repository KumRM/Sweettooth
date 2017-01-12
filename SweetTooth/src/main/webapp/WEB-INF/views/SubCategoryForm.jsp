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
max-width: 750px;
}
</style>
<div align="center">
<h1>
<p style="font-size: x-large;">SUB-CATEGORY REGISTRATION FORM</p>
</h1>
</div>
<div ng-app="app" ng-controller="myCtrl" align="left">
<div align="center">
<fieldset>
<form:form modelAttribute="subCategory" action="addSubCategory">
<form:input type="hidden" path="subCategoryId"/>
<div class='kickass_field'>
          <form:input path="subCategoryName" maxlength='30' required='required'/>
          <lable>
            <i>SUB-CATEGORY NAME</i>
          </lable>
        </div>
<div class='kickass_field'>        
			<form:input path="subCategoryDescription" maxlength='30' required='required'/>
          <lable>
            <i>SUB-CATEGORY DESCRIPTION</i>
          </lable>
        </div>
<div>        
<form:select path="category.categoryName" items="${categoryList}" itemValue="categoryName" itemLabel="categoryName"/>
</div>
<c:if test="${!empty subCategory.subCategoryName && !empty subCategory.subCategoryDescription}">
<input type="submit" value="Edit Sub-Category"/>
</c:if>
<c:if test="${empty subCategory.subCategoryName || empty subCategory.subCategoryDescription}">
<input type="submit" value="Add Sub-Category"/>
<input type="button" id="buttonToggle" value="Show List" onclick="toggle()"/>
</c:if>
</form:form>
</fieldset>
</div>
<div align="center" class="table-responsive">
<table class="table table-hover table-condensed table-sm" id="subCategoryTable">
<tr>
<td align="right">
<input type="text" ng-model="find" placeholder="Search"/>
</td>
</tr>
<tr align="left">
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
<td><a href="deleteSubCategory-{{scList.subCategoryId}}"><i class="fa fa-times"></i></a></td>
<td><a href="editSubCategory-{{scList.subCategoryId}}"><i class="fa fa-pencil"></i></a></td>
</tr>
</table>
</div>
<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller("myCtrl",function ($scope){
	$scope.jsonData = ${subCategoryList};
});
</script>
</div>
<%@ include file="Footer.jsp" %>