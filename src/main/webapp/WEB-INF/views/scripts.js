var app = angular.module('paintProducts',['ngRoute']);
var basicurl = "http://localhost:8080/product";

app.controller("productController", function($scope, $http, $log,$location) {
    $scope.selected = null;
    $http.get(basicurl +"/all").then(function(response) {
        $scope.products = response.data;
    });
    $scope.dropboxitemselected = function() {
    	$log.warn($scope.selected.code);
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
                otherwise({
                    redirectTo: '/'
                });;
            }
        ]);

app.controller("categoriesController", function($scope, $http,$routeParams,$location) {
    var url = basicurl + "/category/"+$routeParams.productCode;
    $http.get(url).then(function(response) {
        $scope.categories = response.data;
    });
    
    $scope.viewproduct = function(code, type) {
    	$location.url('/viewproduct/'+code+"/"+type);
    };
});