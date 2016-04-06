var app = angular.module('paintProducts', []);

app.controller("productController", function($scope, $http, $log) {
    $scope.selected = null;
    $http.get("http://localhost:8080/product/all").then(function(response) {
        $scope.products = response.data;
    });
    $scope.dropboxitemselected = function() {
        var url = "http://localhost:8080/product/category/" + $scope.selected.code;
        //app.controller("categoriesController", function($scope, $http, $log) {
            $http.get(url).then(function(response) {
                $scope.categories = response.data;
                $log.warn(response.data);
            });
        //});
    };
});

app.controller("categoryLastUpdatedController", function($scope, $http, $log) {
    $scope.selected = null;
    $http.get("http://localhost:8080/product/category/lastupdated").then(function(response) {
        $scope.categories = response.data;
    });

    $scope.viewproduct = function(code,type) {
   
    };
});


app.controller("categoryTypeController", function($scope, $http, $log) {
    $http.get("http://localhost:8080/product/category/SE20/5KG").then(function(response) {
        $scope.category = response.data;
    });
});