//'use strict';

// Declare app level module which depends on views, and components
/*angular.module('myApp', [
    'ngRoute',
    'myApp.view1',
    'myApp.view2',
    'myApp.version'
]).
config(['$routeProvider', function($routeProvider) {
    $routeProvider.otherwise({redirectTo: '/view1'});
}]);*/
var myApp = angular.module('myApp', []);

myApp.controller('CardCtrl', ['$scope', '$http', function ($scope, $http) {
    $http.get('json/SetList.json').success(function(data) {
        $scope.sets = data;
    });

    $scope.orderProp = 'date';

    /*$scope.sets = [
        {'name': 'Limited Edition: Alpha',
         'date': 'August 1993',
         'cards': 295},
        {'name': 'Limited Edition: Beta',
         'date': 'October 1993',
         'cards': 295},
        {'name': 'Unlimited Edition',
         'date': 'December 1993',
         'cards': 302},
        {'name': 'Revised Edition',
         'date': 'April 1994',
         'cards': 306}
    ];*/
}]);
