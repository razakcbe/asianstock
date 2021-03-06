var app = angular.module('paintProducts', ['ngRoute','ngFileUpload']);
var basicurl = "https://asianstock.herokuapp.com/product";
//var basicurl = "http://localhost:8080/product";


app.config(['$routeProvider',
    function($routeProvider) {
        $routeProvider.
        when('/product/:productCode', {
            templateUrl: 'productpage',
            controller: 'categoriesController'
        }).
        when('/lastupdatedproduct', {
            templateUrl: 'viewproduct',
            controller: 'categoryTypeController'
        }).
        when('/', {
            templateUrl: 'mainpage',
            controller: 'productController'
        }).
        when('/viewproduct/:productCode/:categoryType', {
            templateUrl: 'viewproduct',
            controller: 'categoryTypeController'
        }).
        when('/updateproduct/:productCode/:categoryType', {
            templateUrl: 'updateproduct',
            controller: 'categoryTypeController'
        }).
        when('/updateproductInfo/:productCode/:categoryType', {
            templateUrl: 'viewproduct',
            controller: 'categoryTypeController'
        }).
        when('/addproduct', {
            templateUrl: 'addproduct',
            controller: 'addProductController'
        }).
        when('/allproduct', {
            templateUrl: 'allproduct',
            controller: 'allProductController'
        }).
        when('/displayProductsByCategory/:productUniqueName', {
            templateUrl: 'producttype',
            controller: 'displayProductByCategoryController'
        }).
        when('/limitedstocks', {
            templateUrl: 'limitedstocks',
            controller: 'limitedStockController'
        }).
        otherwise({
            redirectTo: '/'
        });;
    }
]);

app.controller("productController", function($scope, $http, $log, $location) {
    $scope.selected = null;
    $http.get(basicurl + "/all").then(function(response) {
        $scope.products = response.data;
    });
    $scope.dropboxitemselected = function() {
        $location.url("/product/" + $scope.selected.code);
    };
});

app.controller("categoryLastUpdatedController", function($scope, $http, $log, $location) {
    $scope.selected = null;
    $http.get(basicurl + "/category/lastupdated").then(function(response) {
        $scope.categories = response.data;
    });

    $scope.viewproduct = function(code, type) {
        $location.url('/viewproduct/' + code + "/" + type);
    };
});


app.controller("categoryTypeController", function($scope, $http, $log, $routeParams, $location,Upload) {
    var url = basicurl + "/category/" + $routeParams.productCode + "/" + $routeParams.categoryType;
    $http.get(url).then(function(response) {
        $scope.category = response.data;
    });
    $scope.updateProductInfo = function(price, quantity) {
        var url = basicurl + "/category/update/" + $scope.category.product.code;
        var data = angular.toJson($scope.category);
        var config = {
            headers: {
                'Content-Type': 'application/json'
            }
        }
        $http.post(url, data, config)
            .success(function(data, status, headers, config) {
                $location.url('/viewproduct/' + $scope.category.product.code + "/" + $scope.category.type);
            })
            .error(function(data, status, header, config) {

            });
    };
    
    $scope.uploadImage = function () {
    	var file = $scope.file;
    	Upload.upload({
            url: basicurl+'/upload',
            data: {file: file,}
        }).then(function (resp) {
        	$scope.category.imageurl = resp.data;
            console.log('Success ' + resp.config.data.file.name + 'uploaded. Response: ' + resp.data);
        }, function (resp) {
            console.log('Error status: ' + resp.status);
        }, function (evt) {
            var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
        });
    }
});

app.controller("categoriesController", function($scope, $http, $routeParams, $location) {
    var url = basicurl + "/category/" + $routeParams.productCode;
    $http.get(url).then(function(response) {
        $scope.categories = response.data;
        $scope.categories.length = response.data.length;
    });

    $scope.viewproduct = function(code, type) {
        $location.url('/viewproduct/' + code + "/" + type);
    };

    $scope.updateproduct = function(code, type) {
        $location.url('/updateproduct/' + code + "/" + type);
    };
});

app.controller("allProductController", function($scope, $http, $log, $location) {
    $scope.selected = null;
    $http.get(basicurl + "/category/all").then(function(response) {
        $scope.categories = response.data;
    });

    $scope.viewproduct = function(code, type) {
        $location.url('/viewproduct/' + code + "/" + type);
    };

    $scope.updateproduct = function(code, type) {
        $location.url('/updateproduct/' + code + "/" + type);
    };
});

app.controller("productMainCategory", function($scope, $http, $log, $location) {
    $scope.fetchProductsByCategoryOne = function(code) {
        $http.get(basicurl + "/productcategory/" + code).then(function(response) {
            $scope.productsone = response.data;
        });
    };
    $scope.fetchProductsByCategoryTwo = function(code) {
        $http.get(basicurl + "/productcategory/" + code).then(function(response) {
            $scope.productstwo = response.data;
        });
    };
    $scope.fetchProductsByCategoryThree = function(code) {
        $http.get(basicurl + "/productcategory/" + code).then(function(response) {
            $scope.productsthree = response.data;
        });
    };
    $scope.fetchProductsByCategoryFour = function(code) {
        $http.get(basicurl + "/productcategory/" + code).then(function(response) {
            $scope.productsfour = response.data;
        });
    };
    
    $scope.viewallproduct = function(product) {
     $location.url('/displayProductsByCategory/' + product);
    };

});

app.controller("displayProductByCategoryController", function($scope, $http,$routeParams, $location) {
   
   var productname = $routeParams.productUniqueName;
   
    $http.get(basicurl + "/productsbyname/"+productname).then(function(response) {
        $scope.products = response.data;
    });
    
    $scope.viewallvariant = function(product) {
    	$location.url("/product/" + product);
    };
});

app.controller("limitedStockController", function($scope, $http, $log, $location) {
	var quantity = $scope.inputquantity;
    if(quantity == undefined){
    	 $http.get(basicurl + "/category/limitedstock/"+10).then(function(response) {
             $scope.categories = response.data;
         });
    }
    
    $scope.viewproduct = function(code, type) {
        $location.url('/viewproduct/' + code + "/" + type);
    };

    $scope.updateproduct = function(code, type) {
        $location.url('/updateproduct/' + code + "/" + type);
    };
    
    $scope.filterValue = function($event) {
        if (isNaN(String.fromCharCode($event.keyCode))) {
            $event.preventDefault();
        }
    };
    
    $scope.getProducts = function($event) {
    	var quantity = $scope.inputquantity;
        $http.get(basicurl + "/category/limitedstock/"+quantity).then(function(response) {
            $scope.categories = response.data;
        });
    };
});

app.controller("addProductController", function($scope, $http, $log, $location,Upload) {
    $scope.selected = null;
    $scope.color = 'dropdown';
    
    $http.get(basicurl + "/productsbyname/all").then(function(response) {
        $scope.productcategories = response.data;
    });
    
    $scope.populateProductName = function() {
    	var productName = $scope.category.product.productMainCategory.name;
    	switch(productName){
    	case "Wall Primer":
            code = "-1";
            break;
        case "Exterior Emulsion":
            code = "-2";
            break;
        case "Interior Emulsion":
            code = "-3";
            break;
        case "Apocolite Premium Enamel":
            code = "-4";
            break;
        default:
            break;
    	}
    	
    	$http.get(basicurl + "/productcategory/" + code).then(function(response) {
    	        $scope.products = response.data;
    	 });
    };

    $scope.filterValue = function($event) {
        if (isNaN(String.fromCharCode($event.keyCode))) {
            $event.preventDefault();
        }
    };

    $scope.isShown = function(color) {
        return color === $scope.isnewproductcategory;
    };
    
    $scope.isShownProductDD = function(color) {
        return color === $scope.isnewproduct;
    };

    $scope.addProductInfo = function(code, type) {
        var url = basicurl + "/add";
        $scope.category.imageurl = $scope.file.name;
        var data = angular.toJson($scope.category);
        var config = {
            headers: {
                'Content-Type': 'application/json'
            }
        }
        $http.post(url, data, config)
            .success(function(data, status, headers, config) {
                $location.url('/viewproduct/' + $scope.category.product.code + "/" + $scope.category.type);
            })
            .error(function(data, status, header, config) {

            });
    };
    
    $scope.uploadImage = function () {
    	var file = $scope.file;
    	Upload.upload({
            url: basicurl+'/upload',
            data: {file: file,}
        }).then(function (resp) {
        	//$scope.category.imageurl = resp.data;
            console.log('Success ' + resp.config.data.file.name + 'uploaded. Response: ' + resp.data);
        }, function (resp) {
            console.log('Error status: ' + resp.status);
        }, function (evt) {
            var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
            //console.log('progress: ' + progressPercentage + '% ' + evt.config.data.file.name);
        });
    }
});
//<img ng-src="data:image/JPEG;base64,{{image}}">
//https://murygin.wordpress.com/2014/10/13/rest-web-service-file-uploads-spring-boot/
//http://www.codophile.com/how-to-upload-binary-file-to-spring-rest-service/