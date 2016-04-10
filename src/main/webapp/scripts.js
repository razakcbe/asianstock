var app = angular.module('paintProducts',['ngRoute']);
var basicurl = "http://localhost:8080/product";

app.controller("productController", function($scope, $http, $log,$location) {
    $scope.selected = null;
    $http.get(basicurl +"/all").then(function(response) {
        $scope.products = response.data;
    });
    $scope.dropboxitemselected = function() {
        $location.url("/product/"+$scope.selected.code);
    };
});

app.controller("categoryLastUpdatedController", function($scope, $http, $log,$location) {
    $scope.selected = null;
    $http.get(basicurl + "/category/lastupdated").then(function(response) {
        $scope.categories = response.data;
    });

    $scope.viewproduct = function(code, type) {
    	$location.url('/viewproduct/'+code+"/"+type);
    };
});


app.controller("categoryTypeController", function($scope, $http, $log,$routeParams) {
	var url = basicurl + "/category/"+$routeParams.productCode+"/"+$routeParams.categoryType;
    $http.get(url).then(function(response) {
        $scope.category = response.data;
    });
    
    $scope.updateProductInfo = function(price, quantity) {
    	var url = basicurl + "/category/update/"+$scope.category.product.code;
    	alert(url);
    	
        var data = $.param({
            price: $scope.category.price,
            type : $scope.category.type,
            quantity : $scope.category.quantity
        });
        
        var config = {
                headers : {
                    'Content-Type': 'application/json'
                }
            }
        
        $http.post(url, data, config)
        .success(function (data, status, headers, config) {
            $location.url('/viewproduct/'+$scope.category.product.code+"/"+$scope.category.type);
        })
        .error(function (data, status, header, config) {
            
        });
    };
});


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
                otherwise({
                    redirectTo: '/'
                });;
            }
        ]);

app.controller("categoriesController", function($scope, $http,$routeParams,$location) {
    var url = basicurl + "/category/"+$routeParams.productCode;
    $http.get(url).then(function(response) {
        $scope.categories = response.data;
        $scope.categories.length = response.data.length;
    });
    
    $scope.viewproduct = function(code, type) {
    	$location.url('/viewproduct/'+code+"/"+type);
    };
    
    $scope.updateproduct = function(code, type) {
    	$location.url('/updateproduct/'+code+"/"+type);
    };
});