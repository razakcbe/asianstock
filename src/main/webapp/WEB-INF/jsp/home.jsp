<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootshop online Shopping cart</title>
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
    <script type="text/javascript" src="ng-file-upload-shim.js"></script>
    <script type="text/javascript" src="ng-file-upload.js"></script>
    <script type="text/javascript" src="scripts.js"></script>
    
  </head>
<body ng-app="paintProducts">
<div id="header">
<div class="container">
<div id="welcomeLine" class="row">
	<div class="span6">Welcome!<strong> User</strong></div>
	<div class="span6">
	<div class="pull-right">
		<!-- <a href="product_summary.html"><span class="">Fr</span></a>
		<a href="product_summary.html"><span class="">Es</span></a>
		<span class="btn btn-mini">En</span>
		<a href="product_summary.html"><span>&pound;</span></a>
		<span class="btn btn-mini">$155.00</span>
		<a href="product_summary.html"><span class="">$</span></a>
		<a href="product_summary.html"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> [ 3 ] Itemes in your cart </span> </a> 
 -->	</div>
	</div>
</div>
<!-- Navbar ================================================== -->
<div id="logoArea" class="navbar">
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner" ng-controller="productController">
    <a class="brand" href="#/allproduct"><img src="themes/images/logo.png" alt="Bootsshop"/></a>
		<form class="form-inline navbar-search">
		<input id="srchFld" class="srchTxt" type="text" />
<select class="srchTxt" ng-options="product.name +'-'+product.code for product in products" ng-model="selected" ng-change="dropboxitemselected()">
        </select>
		<button type="submit" id="submitButton" class="btn btn-primary">Go</button>
    </form>
    <ul id="topMenu" class="nav pull-right">
	 <li class=""><a href="#/addproduct">Add Product</a></li>
	 <li class=""><a href="#/allproduct">All Products</a></li>
	 <li class=""><a href="#/limitedstocks">Limited Stocks</a></li>
<!-- 	 <li class="">
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
	</li> -->
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
	<div id="sidebar" class="span3" ng-controller="productMainCategory">
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<li class="subMenu open" ng-click="fetchProductsByCategoryOne(-1)"><a>Wall Primer</a>
				<ul>
				<li ng-repeat="product in productsone">
					<a ng-click="viewallproduct(product)" ><i class="icon-chevron-right"></i>{{product}}</a>
				</li>
				</ul>
			</li>
				<li class="subMenu open" ng-click="fetchProductsByCategoryTwo(-2)"><a>Exterior Emulsion</a>
				<ul>
				<li ng-repeat="product in productstwo">
					<a ng-click="viewallproduct(product)" ><i class="icon-chevron-right"></i>{{product}}</a>
				</li>
				</ul>
			</li>
				<li class="subMenu open" ng-click="fetchProductsByCategoryThree(-3)"><a>Interior Emulsion</a>
				<ul>
				<li ng-repeat="product in productsthree">
					<a ng-click="viewallproduct(product)" ><i class="icon-chevron-right"></i>{{product}}</a>
				</li>
				</ul>
			</li>
				<li class="subMenu open" ng-click="fetchProductsByCategoryFour(-4)"><a>Apocolite Premium Enamel</a>
				<ul>
				<li ng-repeat="product in productsfour">
					<a ng-click="viewallproduct(product)"><i class="icon-chevron-right"></i>{{product}}</a>
				</li>
				</ul>
			</li>
		</ul>
		<br/>
	</div>
<!-- Sidebar end=============================================== -->
<script type="text/ng-template" id="mainpage">
<div class="span9">		
			<div class="well well-small" ng-controller="categoryLastUpdatedController">
			<h4>Last Updated Products <small class="pull-right"></small></h4>
			<div class="row-fluid">
			<div id="featured" class="carousel slide">
			<div class="carousel-inner">
			  <div class="item active">
			  <ul class="thumbnails">
			  <li class="span3" ng-repeat="category in categories | orderBy:'quantity':false"">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<a ng-click="viewproduct(category.product.code,category.type)"><img ng-src={{category.imageurl}} style="height:150px; width: "150px" alt=""></a>
					<div class="caption">
					  <h5>{{category.product.name}}</h5>
					  <small>{{category.product.code}} - {{category.type}}</small>
					  <h4><a class="btn" ng-click="viewproduct(category.product.code,category.type)" >VIEW</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-primary">&#8377;{{category.price}}</a></h4>
					</div>
				  </div>
				</li>
			  </ul>
			  </div>
			  </div>
			  </div>
			  </div>
		</div>
		</div>
		</script>
		<script type="text/ng-template" id="productpage">
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="#/products">Home</a> <span class="divider">/</span></li>
		<li class="active">Products Name</li>
    </ul>  
<br class="clr"/>
<div class="tab-content">
<h3> Products Name <small class="pull-right"> {{categories.length}} products are available </small></h3>
<div class="pull-right"><h5>Search : <input type = "text" placeholder = "Search for text" ng-model="searchText" /></h5></div>
<br class="clr"/>
	<div class="tab-pane" id="listView">
		<div ng-repeat="category in categories | filter:searchText">
		<div class="row">	  
			<div class="span2">
				<img ng-src={{category.imageurl}} style="height:150px; width: "150px" alt=""/>
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
			 <a class="btn btn-large btn-primary"> Update <i class=" icon-shopping-cart"></i></a>
			  <a ng-click="viewproduct(category.product.code,category.type)" class="btn btn-large">View<i class="icon-zoom-in"></i></a>
			</div>
		</div>
		</div>
		<hr class="soft"/>
	</div>

	<div class="tab-pane  active" id="blockView">
		<ul class="thumbnails">
		
		<li class="span3" ng-repeat="category in categories | filter:searchText |orderBy:'quantity':false">
			  <div class="thumbnail">
				<a><img ng-src={{category.imageurl}} style="height:150px; width: "150px" alt=""/></a>
				<div class="caption">
				  <h5>{{category.product.name}}</h5>
				  <p> 
					{{category.product.code}} - {{category.type}}
				  </p>
				   <h4 style="text-align:center"><a class="btn" ng-click="viewproduct(category.product.code,category.type)"> <i class="icon-zoom-in"></i></a> <a class="btn" ng-click="updateproduct(category.product.code,category.type)">Update <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" >&#8377;{{category.price}}</a></h4>
				</div>
			  </div>
			</li>
		  </ul>
	<hr class="soft"/>
	</div>
</div>
			<br class="clr"/>
</div>
</script>
<script type="text/ng-template" id ="viewproduct">
<div class="span9">
    <ul class="breadcrumb">
    <li><a href="#/products">Home</a> <span class="divider">/</span></li>
    <li><a href="#/products">Products</a> <span class="divider">/</span></li>
    <li class="active">product Details</li>
    </ul>
	<div class="row">	  
			<div id="gallery" class="span3">
            <a href="" title="Asian Paint">
				<img ng-src={{category.imageurl}} style="height:150px; width: "150px" alt="Asian Paint"/>
            </a>
			</div>
			<div class="span6">
				<h3>{{category.product.name}}</h3>
				<h5>{{category.product.code}} -  {{category.type}}</h5>
				<hr class="soft"/>
				<form class="form-horizontal qtyFrm">
				  <div class="control-group">
					<label class="control-label"><span>&#8377;{{category.price}}</span></label>
				  </div>
				</form>
				
				<hr class="soft"/>
				<h4>{{category.quantity}} items in stock</h4>
			</div>
			
			<div class="span9">
            <div id="myTabContent" class="tab-content">
              <div class="tab-pane fade active in" id="home">
			  <h4>Product Information</h4>
                <table class="table table-bordered">
				<tbody>
				<tr class="techSpecRow"><th colspan="2">Product Details</th></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Name: </td><td class="techSpecTD2">{{category.product.name}}</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Code:</td><td class="techSpecTD2">{{category.product.code}}</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Price(Exclusive VAT):</td><td class="techSpecTD2">&#8377;{{category.nonVatAmount | number:2}}</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">VAT:</td><td class="techSpecTD2">&#8377;{{category.vatAmount | number:2}}</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">MRP:</td><td class="techSpecTD2">&#8377;{{category.price}}</td></tr>
				</tbody>
				</table>
              </div>
		<div class="tab-pane fade" id="profile">
		<div id="myTab" class="pull-right">
		 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
		 <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
		</div>
		<br class="clr"/>
		<hr class="soft"/>
				<br class="clr">
					 </div>
		</div>
          </div>

	</div>
</div>
</script>
<script type="text/ng-template" id ="updateproduct">
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="#/products">Home</a> <span class="divider">/</span></li>
		<li class="active">Update Product Info</li>
    </ul>
	<h3>Update Product</h3>	
	<div class="well">
	<form class="form-horizontal" >
		<h4>Update Product Stock Info</h4>
		<div class="control-group">
		<label class="control-label">Image <sup>*</sup></label>
		<div class="controls">
		 <div id="gallery" class="span3">
            <a href="defaultpaint.jpg" title="Asian Paint">
				<img ng-src={{category.imageurl}} style="width:100%;height:30%"  alt="Asian Paint"/>
            </a>
			</div>
		</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputproductname">Product name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" readonly id="inputproductname" ng-model="category.product.name" value={{category.product.name}}>
			</div>
		 </div>
		 <div class="control-group">
			<label class="control-label" for="inputproductcode">Product code <sup>*</sup></label>
			<div class="controls">
			  <input type="text" readonly id="inputproductcode" ng-model="category.product.code" value={{category.product.code}}>
			</div>
		 </div>
		<div class="control-group">
		<label class="control-label" for="inputvariant">Variant type<sup>*</sup></label>
		<div class="controls">
		  <input type="text" id="inputvariant" readonly ng-model="category.type" value={{category.type}}>
		</div>
	  </div>	  
	<div class="control-group">
		<label class="control-label" for="inputquantity">Quantity Available <sup>*</sup></label>
		<div class="controls">
		  <input type="text" ng-keypress="filterValue($event)" id="inputquantity" ng-model="category.quantity" value={{category.quantity}}>
		</div>
	  </div>	  
		<div class="control-group">
		<label class="control-label" for="inputprice" >Price(Inclusive of VAT): <sup>*</sup></label>
		<div class="controls">
			<input type="text" ng-keypress="filterValue($event)" id="inputprice" ng-model="category.price" value={{category.price}}>
		</div>
	  </div>

	<div class="alert alert-block alert-error fade in">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<strong>Please makes sure</strong> that before updating product stock
	 </div>	
	 
	<div class="control-group">
			<div class="controls">
				<input class="btn btn-large btn-success" ng-click="updateProductInfo(category.price,category.quantity)"  type="submit" value="Update" />
			</div>
		</div>		
	</form>
</div>
</div>
</script>
<script type="text/ng-template" id ="addproduct">
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="#/products">Home</a> <span class="divider">/</span></li>
		<li class="active">Add Product</li>
    </ul>
	<h3> Add Product</h3>	
	<div class="well">
	<form class="form-horizontal" >
		<h4>Add Product Info</h4>
		<div class="control-group">
		<label class="control-label">Image <sup>*</sup></label>
		<div class="controls">
		 <div id="gallery" class="span3">
			<input type="file" ng-model="file" name="file" accept="image/*" ngf-select ng-required ngf-resize="{width: 150, height: 150}"/><input class="btn btn-small btn-success" ng-click="uploadImage()"  type="submit" value="Upload" /><input type="hidden" ng-model="category.imageurl">
		 </div>
		</div>
		</div>
		<div class="control-group" ng-init="isnewproductcategory='dropdown'">
			<label class="control-label" for="newproductcategory">Do you want to create new product category ?<sup>*</sup></label>
			<div class="controls">
			  <input type="radio" id="newproductcategory" ng-model="isnewproductcategory" value="text"> Yes
			  <input type="radio" id="newproductcategory" ng-model="isnewproductcategory" value="dropdown"> No
			</div>
		 </div>

		<div class="control-group" ng-show="isShown('dropdown')">
			<label class="control-label" for="inputproductcategoryname">Product Category Name <sup>*</sup></label>
			<div class="controls">
			  <select class="srchTxt" id="inputproductcategoryname" ng-change="populateProductName()"  ng-options="productcategory.name for productcategory in productcategories" ng-model="category.product.productMainCategory">
        	</select>
			</div>
		 </div>
	
		<div class="control-group" ng-show="isShown('text')">
			<label class="control-label" for="inputproductcategoryname">Product Category Name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="inputproductcategoryname" ng-model="category.product.productMainCategory">
			</div>
		 </div>

		<div class="control-group" ng-init="isnewproduct='DD'">
			<label class="control-label" for="newproduct">Do you want to create new product ?<sup>*</sup></label>
			<div class="controls">
			  <input type="radio" id="newproduct" ng-model="isnewproduct" value="TXT"> Yes
			  <input type="radio" id="newproduct" ng-model="isnewproduct" value="DD"> No
			</div>
		 </div>

		 <div class="control-group" ng-show="isShownProductDD('DD')">
			<label class="control-label" for="inputproductname">Product name <sup>*</sup></label>
			<div class="controls">
			  <select class="srchTxt" id="inputproductname" required ng-options="product for product in products" ng-model="category.product.name">
        	</select>
			</div>
		 </div>

		<div class="control-group" ng-show="isShownProductDD('TXT')">
			<label class="control-label" for="inputproductname">Product name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="inputproductname" ng-model="category.product.name" required />
			</div>
		 </div>

		 <div class="control-group">
			<label class="control-label" for="inputproductcode">Product code <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="inputproductcode" ng-model="category.product.code" required>
			</div>
		 </div>
		<div class="control-group">
		<label class="control-label" for="inputvariant">Variant type<sup>*</sup></label>
		<div class="controls">
		  <input type="text" id="inputvariant" ng-model="category.type" required>
		</div>
	  </div>	  
	<div class="control-group">
		<label class="control-label" for="inputquantity">Quantity Available <sup>*</sup></label>
		<div class="controls">
		  <input type="text" ng-keypress="filterValue($event)" id="inputquantity" ng-model="category.quantity" required>
		</div>
	  </div>	  
		<div class="control-group">
		<label class="control-label" for="inputprice" >Price(Inclusive of VAT): <sup>*</sup></label>
		<div class="controls">
			<input type="text" ng-keypress="filterValue($event)" id="inputprice" ng-model="category.price">
		</div>
	  </div>

	<div class="alert alert-block alert-error fade in">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<strong>Please enter</strong> all required fields
	 </div>	
	 
	<div class="control-group">
			<div class="controls">
				<input class="btn btn-large btn-success" ng-click="addProductInfo()"  type="submit" value="Create" />
			</div>
		</div>		
	</form>
</div>
</div>
</script>
<script type="text/ng-template" id="allproduct">
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="#/products">Home</a> <span class="divider">/</span></li>
		<li class="active">Products Name</li>
    </ul>  
 <!-- <div id="myTab" class="pull-right">
</div> -->
<br class="clr"/>
<div class="tab-content">
<h3> Products Name <small class="pull-right"> {{categories.length}} products are available </small></h3>
<div class="pull-right"><h5>Search : <input type = "text" placeholder = "Search for text" ng-model="searchText" /></h5></div>
<br class="clr"/>
	<div class="tab-pane  active" id="blockView">
		<ul class="thumbnails">
		
		<li class="span3" ng-repeat="category in categories | filter:searchText | orderBy:'quantity':false">
			  <div class="thumbnail">
				<a><img ng-src={{category.imageurl}} style="height:150px; width: "150px" alt=""/></a>
				<div class="caption">
				  <h5>{{category.product.name}}</h5>
				  <p> 
					{{category.product.code}} - {{category.type}}</br>
					<b>{{category.quantity}} items in stock</b>
				  </p>
				   <h4 style="text-align:center"><a class="btn" ng-click="viewproduct(category.product.code,category.type)"> <i class="icon-zoom-in"></i></a> <a class="btn" ng-click="updateproduct(category.product.code,category.type)">Update <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary">&#8377;{{category.price}}</a></h4>
				</div>
			  </div>
			</li>
		  </ul>
	<hr class="soft"/>
	</div>
</div>
			<br class="clr"/>
</div>
</script>
<script type="text/ng-template" id="producttype">
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="#/products">Home</a> <span class="divider">/</span></li>
		<li class="active">Products Name</li>
    </ul>  
<br class="clr"/>
<div class="tab-content">
<h3> Products Name <small class="pull-right"> {{products.length}} products are available </small></h3>
<div class="pull-right"><h5>Search : <input type = "text" placeholder = "Search for text" ng-model="searchText" /></h5></div>
<br class="clr"/>
	<div class="tab-pane  active" id="blockView">
		<ul class="thumbnails">
		
		<li class="span3" ng-repeat="product in products | filter:searchText">
			  <div class="thumbnail">
				<a><img src="defaultpaint.jpg" alt=""/></a>
				<div class="caption">
				  <h5>{{product.name}}</h5>
				  <p> 
					{{product.code}}
				  </p>
				   <h4 style="text-align:center"><a class="btn" ng-click="viewallvariant(product.code)">View All <i class="icon-shopping-cart"></i></a></h4>
				</div>
			  </div>
			</li>
		  </ul>
	<hr class="soft"/>
	</div>
</div>
<br class="clr"/>
</div>
</script>
<script type="text/ng-template" id="limitedstocks">
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="#/products">Home</a> <span class="divider">/</span></li>
		<li class="active">Products Name</li>
    </ul>
<br class="clr"/>
<div class="tab-content">
<h3> Products Name <small class="pull-right"> {{categories.length}} products are available </small></h3>
<div class="pull-right"><h5>Input Quantity : <input type="text" ng-blur="getProducts()" ng-keypress="filterValue($event)" id="inputquantity" ng-model="inputquantity" ng-init="50"></h5></div>
<br class="clr"/>
	<div class="tab-pane  active" id="blockView">
		<ul class="thumbnails">
		
		<li class="span3" ng-repeat="category in categories | filter:searchText | orderBy:'quantity':false">
			  <div class="thumbnail">
				<a><img ng-src={{category.imageurl}} style="height:150px; width: "150px" alt=""/></a>
				<div class="caption">
				  <h5>{{category.product.name}}</h5>
				  <p> 
					{{category.product.code}} - {{category.type}}</br>
					<b>{{category.quantity}} items in stock</b>
				  </p>
				   <h4 style="text-align:center"><a class="btn" ng-click="viewproduct(category.product.code,category.type)"> <i class="icon-zoom-in"></i></a> <a class="btn" ng-click="updateproduct(category.product.code,category.type)">Update <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" >&#8377;{{category.price}}</a></h4>
				</div>
			  </div>
			</li>
		  </ul>
	<hr class="soft"/>
	</div>
</div>
			<br class="clr"/>
</div>
</script>
		<div ng-view></div>
		</div>
	</div>
</div>
<!-- Footer ================================================================== -->
	<div  id="footerSection">
	<div class="container">
		<div class="row">
		 </div>
		<p class="pull-right">&copy; </p>
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