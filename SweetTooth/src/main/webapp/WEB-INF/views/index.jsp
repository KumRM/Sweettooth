<%@ include file="Header.jsp"%>
<div ng-app="app" ng-controller="myCtrl">
<!--=======CODE FOR SLIDER=================-->
<div id="myCarousel" class="carousel slide" data-ride="carousel">

	<!--=====INDICATORS=====-->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
		<li data-target="#myCarousel" data-slide-to="3"></li>
	</ol>

	<!--=============WRAPPER FOR SLIDES======-->
	<div class="carousel-inner" role="listbox">
		<div class="item active">
		<div class="brand wow fadeIn">
			<div class="carousel-caption">
				<h1 class="brand_name">
					<i><b><p>SweetTooth</p></b></i>
				</h1>
			</div>
		</div>
			<img src="resources/Images/cupcakes2.jpg" alt="SweetTooth" width="100%"/>
		</div>

		<div class="item">
		<div class="brand wow fadeIn">
			<div class="carousel-caption">
				<h1 class="brand_name">
					<i><b><p>SweetTooth</p></b></i>
				</h1>
			</div>
		</div>
			<img src="resources/Images/DonutsNBagels/457470064.jpg" alt="SweetTooth" width="100%"/>
		</div>

		<div class="item">
		<div class="brand wow fadeIn">
			<div class="carousel-caption">
				<h1 class="brand_name">
					<i><b><p>SweetTooth</p></b></i>
				</h1>
			</div>
		</div>
			<img src="resources/Images/birthday1.jpg" alt="SweetTooth" width="100%"/>
		</div>

		<div class="item">
		<div class="brand wow fadeIn">
			<div class="carousel-caption">
				<h1 class="brand_name">
					<i><b><p>SweetTooth</p></b></i>
				</h1>
			</div>
		</div>
			<img src="resources/Images/Chocolates/Mixed-Chocs-chocolate-wallpaper.png" alt="SweetTooth" width="100%"/>
		</div>
		<!-- 		<div class="carousel-inner"> -->
		<!-- 			<h1 class="brand_name"> -->
		<!-- 				<a href="./">SweetTooth</a> -->
		<!-- 			</h1> -->
		<!-- 		</div> -->
	</div>
	<!--     <div> -->
	<!--     <h2 align="center" style="font-family: cursive;"><a><b><i>A Sugar Rush For Every Occasion</i></b></a></h2> -->
	<!--     </div> -->

	<!--========LEFT AND RIGHT CONTROLS==============-->
	<a class="left carousel-control" href="#myCarousel" role="button"
		data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
		aria-hidden="true"></span> <span class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#myCarousel" role="button"
		data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
		aria-hidden="true"></span> <span class="sr-only">Next</span>
	</a>
</div>

<!--=============DECORATION/SEPARATION=================-->

<div class="decoration">
<h6>oooooooooooooooooo</h6>
	<h2><em>Our</em><i>Products</i></h2>
</div>

<!--==========GALLERY=============-->

<div class="gallery">
	<!--===============FIRST COLUMN==========-->
	<div class="gallery_col-1">
		<!--=========CUPCAKES=========-->
		<div class="gallery pic"
			href="images/page-1_img03_original.jpg"
			class="gallery_item thumb lazy-img"> <!--                     style="padding-bottom: 93.96551724137931%;" -->
			<img src="resources/Images/CupCakes/nutellacupcakes.jpg" class="img-responsive"
			alt="Cup Cakes">
			<div class="gallery_overlay">
				<div class="gallery_caption">
					<p>
						<em>CupCakes</em>
					</p>
					<p>Integer convallis orci vel mi nelaoreet, at ornare lorem
						consequat. Phasellus era nisl</p>
				</div>
			</div>
		</div>
		<!--=========CUSTOM CAKES=========-->
		<div class="gallery pic"
			href="images/page-1_img04_original.jpg"
			class="gallery_item thumb lazy-img"> <!--                     style="padding-bottom: 74.13793103448276%;" -->
			<img src="resources/Images/CustomCakes/28494504-Sweets-seamless-background-of-cakes-chocolate-biscuits-macaron-donut-vector-illustration-Stock-Vector.jpg" class="img-responsive" alt="Custom Cakes">
			<div class="gallery_overlay">
				<div class="gallery_caption">
					<p>
						<em>CustomMade</em>
					</p>
					<p>Integer convallis orci vel mi nelaoreet, at ornare lorem
						consequat. Phasellus era nisl</p>
				</div>
			</div>
		</div>
		
		<!--=========CHOCOLATES=========-->
		<div class="gallery pic"
			href="images/page-1_img05_original.jpg"
			class="gallery_item thumb lazy-img"> <!--                      style="padding-bottom: 94.6551724137931%;"> -->
			<img src="resources/Images/Chocolates/0013414_chocolate-mixed_500.jpeg"	class="img-responsive"
			alt="Chocolates">
			<div class="gallery_overlay">
				<div class="gallery_caption">
					<p>
						<em>Chocolates</em>
					</p>
					<p>Integer convallis orci vel mi nelaoreet, at ornare lorem
						consequat. Phasellus era nisl</p>
				</div>
			</div>
		</div>
	</div>
	<!--=========SECOND COLUMN=========-->
	<div class="gallery_col-2">
		<!--=========BROWNIES=========-->
		<div class="gallery pic"
			href="images/page-1_img06_original.jpg"
			class="gallery_item thumb lazy-img"> <!--                      style="padding-bottom: 52.48322147651007%;" -->
			<img src="resources/Images/Brownies/mochacheesecakebrownie.jpg"	class="img-responsive"
			alt="Brownies">
			<div class="gallery_overlay">
				<div class="gallery_caption">
					<p>
						<em>Brownies</em>
					</p>
					<p>Integer convallis orci vel mi nelaoreet, at ornare lorem
						consequat. Phasellus era nisl</p>
				</div>
			</div>
		</div>
		<!--=========WEDDING CAKES=========-->
		<div class="gallery pic"
			href="images/page-1_img07_original.jpg"
			class="gallery_item thumb lazy-img"> <!--                      style="padding-bottom: 55.97315436241611%;"-->
			<img src="resources/Images/WeddingCakes/wedding2.jpg"	class="img-responsive"
			alt="Wedding Cakes">
			<div class="gallery_overlay">
				<div class="gallery_caption">
					<p>
						<em>WeddingCakes</em>
					</p>
					<p>Integer convallis orci vel mi nelaoreet, at ornare lorem
						consequat. Phasellus era nisl</p>
				</div>
			</div>
		</div>
		<!--=========OTHER BAKED GOODIES=========-->
		<div class="gallery pic"
			href="images/page-1_img11_original.jpg"
			class="gallery_item thumb lazy-img"><!-- 			style="padding-bottom: 93.69676320272572%;" -->
			<img src="resources/Images/OtherBakedGoodies/Bread-5.jpg"	class="img-responsive"
			alt="Other Baked Goodies">
			<div class="gallery_overlay">
				<div class="gallery_caption">
					<p>
						<em>Other Baked Goodies</em>
					</p>
					<p>Integer convallis orci vel mi nelaoreet, at ornare lorem
						consequat. Phasellus era nisl</p>
				</div>
			</div>
		</div>
	</div>
	<!--=========THIRD ROW=========-->
	<div class="gallery_col-3">
		<!--=========TRUFFLES=========-->
		<div class="gallery pic"
			href="images/page-1_img09_original.jpg"
			class="gallery_item thumb lazy-img"> <!--                     style="padding-bottom: 93.69676320272572%;" -->
			<img src="resources/Images/Truffles/Truffles2.jpg" class="img-responsive" alt="Truffles">
			<div class="gallery_overlay">
				<div class="gallery_caption">
					<p>
						<em>Truffles</em>
					</p>
					<p>Integer convallis orci vel mi nelaoreet, at ornare lorem
						consequat. Phasellus era nisl</p>
				</div>
			</div>
		</div>
		<!--=========PHOTO CAKES=========-->
		<div class="gallery pic"
			href="images/page-1_img10_original.jpg"
			class="gallery_item thumb lazy-img"> <!--                     style="padding-bottom: 72.23168654173765%;" -->
			<img src="resources/Images/PhotoCakes/allen.jpg" class="img-responsive" alt="Photo Cakes">
			<div class="gallery_overlay">
				<div class="gallery_caption">
					<p>
						<em>PhotoCakes</em>
					</p>
					<p>Integer convallis orci vel mi nelaoreet, at ornare lorem
						consequat. Phasellus era nisl</p>
				</div>
			</div>
		</div>

		<!--=========DONUTS N BAGELS=========-->
		<div class="gallery pic"
			href="images/page-1_img08_original.jpg"
			class="gallery_item thumb lazy-img"> <!--                      style="padding-bottom: 96.10738255033557%;" -->
			<img src="resources/Images/DonutsNBagels/348s.jpg"	class="img-responsive"
			alt="Donuts N Bagels">
			<div class="gallery_overlay">
				<div class="gallery_caption">
					<p>
						<em>DonutsNBagels</em>
					</p>
					<p>Integer convallis orci vel mi nelaoreet, at ornare lorem
						consequat. Phasellus era nisl</p>
				</div>
			</div>
		</div>
	</div>
</div>




<!--=============BESTSELLERS=================-->

<div class="decoration">
<h6>oooooooooooooooooo</h6>
	<h2><em>Our Best</em></h2>
</div>

<!--=================DYNAMIC PRODUCT DISPLAY=========-->

<div class="row">
        <div ng-repeat="jPD in jsonProductData" class="col-md-4">
            <div class="product-item">
              <div class="pic">
                <img src="http://keenthemes.com/assets/bootsnipp/k1.jpg" class="img-responsive" alt="Berry Lace Dress">
                <div>
                  <a href="#" class="btn">Zoom</a>
                  <a href="#" class="btn">View</a>
                </div>
              </div>
              <h3><a href="shop-item.html">{{jPD.productName}}</a></h3>
              <div class="pi-price">$29.00</div>
              <a href="javascript:;" class="btn add2cart">Add to cart</a>
              <div class="sticker sticker-new"></div>
            </div>
        </div>
    </div>


<!--=============DECORATION/SEPARATION=================-->
<div class="decoration">
<img style="height: 100pt; width: 100pt" alt="SweetTooth" src="resources/Images/logo.png"/>
</div>

<script type="text/javascript">
var app =  angular.module('app',[]);
app.controller("myCtrl",function ($scope){
	$scope.jsonProductData = ${productjson};
});
</script>
</div>
<!--=============FOOTER=================-->

<%@ include file="Footer.jsp"%>
<!-- FIRST ROW -->
<!-- <div class="container" style="width: 100%;">   -->
<!--     <div class="container-fluid row"  align="center"> -->

<!-- CHOCOLATES -->

<!--   <div class="col-xs-12 col-md-4"> -->
<!--   	<div class="pic"> -->
<!--   	<img src="resources/Images/Chocolates/1-assorted-mixed.jpg" alt="Chocolates"/> -->
<!-- 	<h3 align="center" style="font-family: cursive;"><a><b><i>Chocolates</i></b></a></h3> -->
<!-- 	</div> -->
<!-- </div> -->

<!-- DONUTS N BAGELS -->

<!--   <div class="col-xs-12 col-md-4"> -->
<!--   <div class="pic"> -->
<!--   <img src="resources/Images/DonutsNBagels/donuts.jpg" alt="Donuts N Bagels"/> -->
<!-- 	<h3 align="center" style="font-family: cursive;"><a><b><i>Donuts N Bagels</i></b></a></h3> -->
<!-- 	</div> -->
<!-- </div> -->

<!-- OTHER BAKED GOODIES -->

<!--   <div class="col-xs-12 col-md-4"> -->
<!--   <div class="pic"> -->
<!--   <img src="resources/Images/CustomCakes/s3.jpg"  alt="Other Baked Goodies"/> -->
<!-- 	<h3 align="center" style="font-family: cursive;"><a><b><i>Other Baked Goodies</i></b></a></h3> -->
<!-- 	</div> -->
<!-- </div> -->

<!--   </div> -->


<!--   SECOND ROW -->
<!-- <div class="container-fluid row" align="center"> -->

<!--FIRST ROW FIRST SLIDER -->

<!-- <div class="col-xs-12 col-md-6"> -->
<!--   <div id="myCarousel" class="carousel slide" data-ride="carousel"> -->
<!--     INDICATORS -->
<!--     <ol class="carousel-indicators"> -->
<!--       <li data-target="#myCarousel" data-slide-to="0" class="active"></li> -->
<!--       <li data-target="#myCarousel" data-slide-to="1"></li> -->
<!--       <li data-target="#myCarousel" data-slide-to="2"></li> -->
<!--     </ol> -->

<!--     WRAPPER FOR SLIDES -->
<!--     <div class="carousel-inner" role="listbox"> -->
<!-- <!--     <a href="#" align="center" style="font-family: cursive; font-size: large;"><b><i>A Cake For Every Occasion</i></b></a> -->
<!--       <div class="item active"> -->
<!--         <img src="resources/Images/CustomCakes/s3.jpg" alt="SweetTooth" width="100%"> -->
<!--       </div> -->

<!--       <div class="item"> -->
<!-- <!--       <a href="#" align="center" style="font-family: cursive; font-size: large;"><b><i>A Cake For Every Occasion</i></b></a> -->
<!--         <img src="resources/Images/WeddingCakes/wedding-cake-photo.jpg" alt="SweetTooth" width="100%"> -->
<!--       </div> -->

<!--       <div class="item"> -->
<!-- <!--       <a href="#" align="center" style="font-family: cursive; font-size: large;"><b><i>A Cake For Every Occasion</i></b></a> -->
<!--         <img src="resources/Images/PhotoCakes/CK107.jpg" alt="SweetTooth" width="100%"> -->
<!--       </div> -->
<!--     </div> -->

<!--     LEFT AND RIGHT CONTROLS -->
<!--     <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> -->
<!-- <!--       <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> -->
<!-- <!--       <span class="sr-only">Previous</span> -->
<!--     </a> -->

<!--     <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> -->
<!-- <!--       <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> -->
<!-- <!--       <span class="sr-only">Next</span> -->
<!--     </a> -->
<!--   </div>  -->
<!-- </div>   -->

<!-- <div class="col-xs-12 col-md-6"> -->
<!-- 	<h1>A Cake For Every Occasion</h1> -->
<!-- </div> -->

<!--   </div> -->

<!--   THIRD ROW -->

<!-- <div class="container-fluid row" align="center"> -->

<!-- <div class="col-xs-12 col-md-6"> -->
<!-- 	<h1>Lil' Delights</h1> -->
<!-- </div> -->

<!--FIRST ROW SECOND SLIDER -->

<!--   <div class="col-xs-12 col-md-6"> -->
<!--     <div id="myCarousel" class="carousel slide" data-ride="carousel"> -->
<!--     INDICATORS -->
<!--     <ol class="carousel-indicators"> -->
<!--       <li data-target="#myCarousel" data-slide-to="0" class="active"></li> -->
<!--       <li data-target="#myCarousel" data-slide-to="1"></li> -->
<!--       <li data-target="#myCarousel" data-slide-to="2"></li> -->
<!--     </ol> -->

<!--     WRAPPER FOR SLIDES -->
<!--     <div class="carousel-inner" role="listbox"> -->
<!--       <div class="item active"> -->
<!-- <!--       <a href="#" align="center" style="font--family: cursive; font-size: large;"><b><i>Lil' Delights</i></b></a> -->
<!--         <img src="resources/Images/Brownies/mochacheesecakebrownie.jpg" alt="SweetTooth" width="100%"> -->
<!--       </div> -->

<!--       <div class="item"> -->
<!-- <!--       <a href="#" align="center" style="font--family: cursive; font-size: large;"><b><i>Lil' Delights</i></b></a> -->
<!--         <img src="resources/Images/Truffles/Truffles1.jpg" alt="SweetTooth" width="100%"> -->
<!--       </div> -->

<!--       <div class="item"> -->
<!-- <!--       <a href="#" align="center" style="font--family: cursive; font-size: large;"><b><i>Lil' Delights</i></b></a> -->
<!--         <img src="resources/Images/CupCakes/peanutbuttercupcakes.jpg" alt="SweetTooth" width="100%"> -->
<!--       </div> -->
<!--     </div> -->


<!--     LEFT AND RIGHT CONTROLS -->
<!--     <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> -->
<!-- <!--       <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> -->
<!-- <!--       <span class="sr-only">Previous</span> -->
<!--     </a> -->

<!--     <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> -->
<!-- <!--       <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> -->
<!-- <!--       <span class="sr-only">Next</span> -->
<!--     </a> -->
<!--   </div>   -->
<!--   </div> -->

<!-- </div> -->

<!--CODE FOR SEASON SALE SLIDER-->

<!--   <div id="myCarousel" class="carousel slide" data-ride="carousel"> -->
<!--     INDICATORS -->
<!--     <ol class="carousel-indicators"> -->
<!--       <li data-target="#myCarousel" data-slide-to="0" class="active"></li> -->
<!--       <li data-target="#myCarousel" data-slide-to="1"></li> -->
<!--       <li data-target="#myCarousel" data-slide-to="2"></li> -->
<!--     </ol> -->

<!--     WRAPPER FOR SLIDES -->
<!--     <div class="carousel-inner" role="listbox"> -->
<!--       <div class="item active"> -->
<!--         <img src="resources/Images/SeasonSale/Swiateczne-lakocie_width400_3.jpg" alt="SweetTooth" width="100%"> -->
<!--       </div> -->

<!--       <div class="item"> -->
<!--         <img src="resources/Images/SeasonSale/merry-christmas-day22.jpg" alt="SweetTooth" width="100%"> -->
<!--       </div> -->

<!--       <div class="item"> -->
<!--         <img src="resources/Images/SeasonSale/holiday-pastries-wallpaper-3.jpg" alt="SweetTooth" width="100%"> -->
<!--       </div> -->
<!--     </div> -->
<!--     <div> -->
<!--     <h3 align="center" style="font-family: cursive; font-size: xx-large;"><a><b><i>This Season's Special</i></b></a></h3> -->
<!--     </div> -->

<!--     LEFT AND RIGHT CONTROLS -->
<!--     <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> -->
<!-- <!--       <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> -->
<!-- <!--       <span class="sr-only">Previous</span> -->
<!--     </a> -->

<!--     <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> -->
<!-- <!--       <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> -->
<!-- <!--       <span class="sr-only">Next</span> -->
<!--     </a> -->
<!--   </div>   -->
<!--  </div> -->

<!--   Wedding Cakes -->

<!--   <div align="center" class="row col-xs-12 col-md-6"> -->
<!--   <div class="pic"> -->
<!--   <img src="resources/Images/WeddingCakes/wedding-cake-photo.jpg" alt="Wedding Cakes"/> -->
<!-- 	<h3 align="center" style="font-family: Monotype Corsiva"><a><b><i>WEDDING CAKES</i></b></a></h3> -->
<!-- 	</div> -->
<!-- </div> -->

<!-- CupCakes -->

<!--   <div align="right" class="row col-xs-12 col-md-6"> -->
<!--   <div class="pic"> -->
<!--   <img src="resources/Images/CupCakes/redvelvetcupcakes.jpg" alt="Cupcakes"/> -->
<!-- 	<h3 align="center" style="font-family: Monotype Corsiva"><a><b><i>CUPCAKES</i></b></a></h3> -->
<!-- 	</div> -->
<!-- </div> -->

<!-- Truffles -->

<!--   <div align="right" class="row col-xs-12 col-md-4"> -->
<!--   <div class="pic"> -->
<!--   <img src="resources/Images/Truffles/Truffles1.jpg" alt="Truffles"/> -->
<!--   <h3 align="center" style="font-family: Monotype Corsiva"><a><b><i>TRUFFLES</i></b></a></h3> -->
<!--   </div> -->
<!--   </div> -->

<!-- Third Row -->
<!--     <div class="container"> -->

<!--   <div align="right" class="row col-md-12"> -->
<!--   <div class="pic"> -->
<!-- 	<h3 align="center" style="font-family: Monotype Corsiva"><a><b><i>SEASON SALE</i></b></a></h3> -->
<!-- 	</div> -->
<!-- </div> -->
<!-- </div> -->

<!-- Fourth Row -->

<!--     <div class="container"> -->

<!--   </div> -->