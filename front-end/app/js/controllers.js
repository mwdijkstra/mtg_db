var myAppControllers = angular.module('myAppControllers', []);

myAppControllers.controller('SetsCtrl', ['$scope', '$http',
    function ($scope, $http) {
        $http.get('json/SetList.json').success(function(data) {
            $scope.sets = data;
        });
    }
]);

myAppControllers.controller('SetDetailCrtrl', ['$scope', '$http',
    function ($scope, $routeParams) {
        $scope.setcode = $routeParams.setcode;
    }
]);