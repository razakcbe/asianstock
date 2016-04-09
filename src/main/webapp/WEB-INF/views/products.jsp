<!DOCTYPE html>
<html lang="en">
  <head>
   <meta charset="ISO-8859-1">
    <title>Stock Maintenance</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	
<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen"/>
    <link href="themes/css/base.css" rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
	<link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->	
	<link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="themes/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png">
	<style type="text/css" id="enject"></style>
	<script type="text/javascript" src="angular.js"></script>
	<script type="text/javascript" src="angular-route.js"></script>
	<script type="text/javascript" src="scripts.js"></script>
  </head>
<body ng-app="paintProducts">
<div id="header">
<div class="container">
<div id="welcomeLine" class="row">
	<div class="span6">Welcome!<strong> User</strong></div>
	<div class="span6"></div>
</div>
<!-- Navbar ================================================== -->
<div id="logoArea" class="navbar">
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner" ng-controller="productController">
    <a class="brand" href="home.html"><img src="themes/images/logo.png" alt="Bootsshop"/></a>
		<input id="srchFld" class="srchTxt" type="text" />
		<select class="srchTxt" ng-options="product.name +'-'+product.code for product in products" ng-model="selected" ng-change="dropboxitemselected()">
		</select>
		<a href="#/product" role="button" ><span class="btn btn-primary">Go</span></a>
    <ul id="topMenu" class="nav pull-right">
	 <li class=""><a href="">Specials Offer</a></li>
	 <li class=""><a href="">Delivery</a></li>
	 <li class=""><a href="">Contact</a></li>
	 <li class="">
	 <a href="#login" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">Login</span></a>
	<div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3>Login Block</h3>
		  </div>
		  <div class="modal-body">
			<form class="form-horizontal loginFrm">
			  <div class="control-group">								
				<input type="text" id="inputEmail" placeholder="Email">
			  </div>
			  <div class="control-group">
				<input type="password" id="inputPassword" placeholder="Password">
			  </div>
			  <div class="control-group">
				<label class="checkbox">
				<input type="checkbox"> Remember me
				</label>
			  </div>
			</form>		
			<button type="submit" class="btn btn-success">Sign in</button>
			<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		  </div>
	</div>
	</li>
    </ul>
  </div>
</div>
</div>
</div>
<!-- Header End====================================================================== -->
<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3" ng-controller="productController">
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<li class="subMenu open"><a>ASIAN PAINTS</a>
				<ul>
				<!-- <li><a class="active" href="products.html"><i class="icon-chevron-right"></i>Cameras (100) </a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>Computers, Tablets & laptop (30)</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>Mobile Phone (80)</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>Sound & Vision (15)</a></li> -->
				<li ng-repeat="product in products">
				<!-- <a href="products.html"><i class="icon-chevron-right"></i>{{product.name}}</a> -->
				</li>
				</ul>
			</li>
			<li class="subMenu"><a> CATEGORY II</a>
			<ul style="display:none">											
			</ul>
			</li>
			<li class="subMenu"><a>CATEGORY III</a>
			</li>
			<li><a href="products.html">CATEGORY IV</a></li>
			<li><a href="products.html">CATEGORY V</a></li>
			<li><a href="products.html">CATEGORY VI</a></li>
		</ul>
		<br/>
	</div>
<!-- Sidebar end=============================================== -->
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="home.html">Home</a> <span class="divider">/</span></li>
		<li class="active">Products Name</li>
    </ul>
	<h3> Products Name <small class="pull-right"> 40 products are available </small></h3>	
	<hr class="soft"/>	  
<div id="myTab" class="pull-right">
 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
 <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
</div>
<br class="clr"/>
<div class="tab-content">
	<div class="tab-pane" id="listView" ng-controller="categoriesController">
		<div ng-repeat="category in categories">
		<div class="row">	  
			<div class="span2">
				<img src="defaultpaint.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>{{category.type}}</h3>				
				<hr class="soft"/>
				<h5>{{category.product.name}}</h5>
				<p>
				{{category.product.code}} - {{category.type}}
				</p>
			</div>
			<div class="span3 alignR">
			<h3>&#8377;{{category.price}}</h3>
			 <a href="product_details.html" class="btn btn-large btn-primary"> Update <i class=" icon-shopping-cart"></i></a>
			  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
			</div>
		</div>
		</div>
		<hr class="soft"/>
	</div>

	<div class="tab-pane  active" id="blockView" ng-controller="categoriesController">
		<ul class="thumbnails">
		
		<li class="span3" ng-repeat="category in categories">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="defaultpaint.jpg" alt=""/></a>
				<div class="caption">
				  <h5>{{category.product.name}}</h5>
				  <p> 
					{{category.product.code}} - {{category.type}}
				  </p>
				   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Update <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">&#8377;{{category.price}}</a></h4>
				</div>
			  </div>
			</li>
		  </ul>
	<hr class="soft"/>
	</div>
</div>
			<br class="clr"/>
</div>
<div ng-view></div>
</div>
</div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
	<div  id="footerSection">
	<div class="container">
		<div class="row">
		 </div>
		<p class="pull-right">&copy; akabdulrazak</p>
	</div><!-- Container End -->
	</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="themes/js/jquery.js" type="text/javascript"></script>
	<script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="themes/js/google-code-prettify/prettify.js"></script>
	
	<script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>
</body>
</html>