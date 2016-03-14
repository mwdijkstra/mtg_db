var myAppControllers = angular.module('myAppControllers', []);

myAppControllers.controller('SetsCtrl', ['$scope', '$http',
    function ($scope, $http) {
        $http.get('json/SetList.json').success(function(data) {
            $scope.sets = data;
        });
    }
]);

myAppControllers.controller('SetDetailCtrl', ['$scope', '$routeParams', '$http',
    function ($scope, $routeParams, $http) {
        $http.get('json/sets/' + $routeParams.setCode + '.json').success(function(data) {
            $scope.set = data;
        });
    }
]);

myAppControllers.controller('CardDetailCtrl', ['$scope', '$routeParams', '$http',
    function ($scope, $routeParams, $http) {
        $http.get('json/sets/' + $routeParams.setCode + '.json').success(function(data) {
            $scope.set = data;
            $scope.card = $routeParams.cardName;
        });
    }
]);