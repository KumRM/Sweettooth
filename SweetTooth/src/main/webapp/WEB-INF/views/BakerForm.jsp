<%@ include file="Header.jsp" %>
<script>
function toggle()
{
	if(document.getElementById("buttonToggle").value == "Show List")
	{
		document.getElementById("bakerTable").style.display = "block";
		document.getElementById("bakerTable").style.visibility = "visible";
		document.getElementById("buttonToggle").value = "Hide List";
	}
	else
	{
		document.getElementById("bakerTable").style.display = "none";
		document.getElementById("bakerTable").style.visibility = "hidden";
		document.getElementById("buttonToggle").value = "Show List";
	}
}
</script>
<style>
#bakerTable
{
display: none;
max-width: 400px;
}
</style>
<div align="center">
<h1>
<p style="font-size: x-large;">BAKER REGISTRATION FORM</p>
</h1>
</div>
<div ng-app="app" id="contain" ng-controller="myCtrl" align="center">
<div class="signup" align="center">
<form:form modelAttribute="baker" action="addBaker">
<form:input type="hidden" path="bakerId"/>
<form:input path="bakerName" placeholder="Enter Baker Name"/>
<form:errors path="bakerName"/><br>
<form:input path="bakerAddress" placeholder="Enter Baker Address"/>
<form:errors path="bakerAddress"/><br>
<form:input path="bakerContact" placeholder="Enter Baker Contact"/>
<form:errors path="bakerContact"/><br>
<form:input path="bakerEmail" placeholder="Enter Baker Email"/>
<form:errors path="bakerEmail"/><br>
<c:if test="${!empty baker.bakerName && !empty baker.bakerAddress && !empty baker.bakerContact && !empty baker.bakerEmail}">
<input type="submit" value="Edit Baker"/>
</c:if>
<c:if test="${empty baker.bakerName || empty baker.bakerAddress || empty baker.bakerContact || empty baker.bakerEmail}">
<input type="submit" value="Add Baker"/>
<input type="button" id="buttonToggle" value="Show List" onclick="toggle()"/>
</c:if>
</form:form>
</div>
<table class="table table-hover" id="bakerTable">
<tr>
<td align="right">
<input type="text" ng-model="find" placeholder="Search"/>
</td>
</tr>
<tr align="left">
<td>
<input type="button" class="btn btn-link" ng-click="sortType='bakerId'; sortReverse = !sortReverse" value="BAKER ID">
<span ng-show="sortType == 'bakerId' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'bakerId' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='bakerName'; sortReverse = !sortReverse" value="BAKER NAME">
<span ng-show="sortType == 'bakerName' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'bakerName' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='bakerAddress'; sortReverse = !sortReverse" value="BAKER ADDRESS">
<span ng-show="sortType == 'bakerAddress' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'bakerAddress' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='bakerContact'; sortReverse = !sortReverse" value="BAKER CONTACT">
<span ng-show="sortType == 'bakerContact' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'bakerContact' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" ng-click="sortType='bakerEmail'; sortReverse = !sortReverse" value="BAKER EMAIL">
<span ng-show="sortType == 'bakerEmail' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'bakerEmail' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-link" value="DELETE"/>
</td>
<td>
<input input type="button" class="btn btn-link" value="EDIT"/>
</td>
</tr>
<tr ng-repeat="bList in jsonData | filter: find | orderBy:sortType:sortReverse">
<td>{{bList.bakerId}}</td>
<td>{{bList.bakerName}}</td>
<td>{{bList.bakerAddress}}</td>
<td>{{bList.bakerContact}}</td>
<td>{{bList.bakerEmail}}</td>
<td><a href="deleteBaker-{{bList.bakerId}}">Delete</a></td>
<td><a href="editBaker-{{bList.bakerId}}">Edit</a></td>
</tr>
</table>
<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller("myCtrl",function ($scope){
	$scope.jsonData = ${bakerList};
});
</script>
</div>
<%@ include file="Footer.jsp" %>