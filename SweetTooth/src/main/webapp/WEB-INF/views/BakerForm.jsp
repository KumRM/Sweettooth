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
max-width: 750px;
}
</style>

<div class="page-header">
<!-- style="background-image: url('resources/Images/background-with-chocolate-cake-macarons.jpg');" -->
<h2 align="center">
<p style="font-size: smaller; color: #823f3f;">Baker Registration Form</p>
</h2>
</div>
<div ng-app="app" ng-controller="myCtrl" align="left">
<div align="center">
<form:form modelAttribute="baker" action="addBaker">
<form:input type="hidden" path="bakerId"/>
<form:errors path="bakerName"/>
<form:input path="bakerName" placeholder="Enter Baker Name"/>
<form:errors path="bakerAddress"/>
<form:input path="bakerAddress" placeholder="Enter Baker Address"/>
<form:errors path="bakerContact"/>
<form:input path="bakerContact" placeholder="Enter Baker Contact"/>
<form:errors path="bakerEmail"/>
<form:input path="bakerEmail" placeholder="Enter Baker Email"/>
<!-- <div class='kickass_field'> -->
<%--           <form:input path="bakerName" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>BAKER NAME</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'>         -->
<%-- 			<form:input path="bakerAddress" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>BAKER ADDRESS</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'>         -->
<%-- 			<form:input path="bakerContact" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>BAKER CONTACT</i> -->
<!--           </lable> -->
<!--         </div> -->
<!-- <div class='kickass_field'>         -->
<%-- 			<form:input path="bakerEmail" maxlength='30' required='required'/> --%>
<!--           <lable> -->
<!--             <i>BAKER E-MAIL</i> -->
<!--           </lable> -->
<!--         </div> -->
<c:if test="${!empty baker.bakerName && !empty baker.bakerAddress && !empty baker.bakerContact && !empty baker.bakerEmail}">
<input type="submit" value="Edit Baker"/>
</c:if>
<c:if test="${empty baker.bakerName || empty baker.bakerAddress || empty baker.bakerContact || empty baker.bakerEmail}">
<input type="submit" value="Add Baker"/>
<input type="button" id="buttonToggle" value="Show List" onclick="toggle()"/>
</c:if>
</form:form>
</div>
<div align="center" class="table-responsive">
<table class="table table-hover table-condensed table-sm" id="bakerTable">
<tr>
<td align="right">
<input type="text" ng-model="find" placeholder="Search"/>
</td>
</tr>
<tr align="left">
<td>
<input type="button" class="btn btn-warning" ng-click="sortType='bakerId'; sortReverse = !sortReverse" value="BAKER ID">
<span ng-show="sortType == 'bakerId' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'bakerId' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-warning" ng-click="sortType='bakerName'; sortReverse = !sortReverse" value="BAKER NAME">
<span ng-show="sortType == 'bakerName' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'bakerName' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-warning" ng-click="sortType='bakerAddress'; sortReverse = !sortReverse" value="BAKER ADDRESS">
<span ng-show="sortType == 'bakerAddress' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'bakerAddress' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-warning" ng-click="sortType='bakerContact'; sortReverse = !sortReverse" value="BAKER CONTACT">
<span ng-show="sortType == 'bakerContact' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'bakerContact' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-warning" ng-click="sortType='bakerEmail'; sortReverse = !sortReverse" value="BAKER EMAIL">
<span ng-show="sortType == 'bakerEmail' && !sortReverse" class="fa fa-caret-down"></span>
<span ng-show="sortType == 'bakerEmail' && sortReverse" class="fa fa-caret-up"></span>
</input>
</td>
<td>
<input type="button" class="btn btn-warning" value="DELETE"/>
</td>
<td>
<input input type="button" class="btn btn-warning" value="EDIT"/>
</td>
</tr>
<tr ng-repeat="bList in jsonData | filter: find | orderBy:sortType:sortReverse">
<td>{{bList.bakerId}}</td>
<td>{{bList.bakerName}}</td>
<td>{{bList.bakerAddress}}</td>
<td>{{bList.bakerContact}}</td>
<td>{{bList.bakerEmail}}</td>
<td><a href="deleteBaker-{{bList.bakerId}}"><span class="glyphicon glyphicon-trash"></span></a></td>
<td><a href="editBaker-{{bList.bakerId}}"><span class="glyphicon glyphicon-pencil"></span></a></td>
</tr>
</table>
</div>
<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller("myCtrl",function ($scope){
	$scope.jsonData = ${bakerList};
});
</script>
</div>
<%@ include file="Footer.jsp" %>