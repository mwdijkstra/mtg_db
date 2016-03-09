var myApp = angular.module('myApp', [
    'ngRoute',
    'myAppControllers'
]);

myApp.config(['$routeProvider',
    function($routeProvider) {
        $routeProvider.
            when('/sets', {
                templateUrl: 'partials/sets.html',
                controller: 'SetsCtrl'
            }).
            when('/sets/:setCode', {
                templateUrl: 'partials/set-details.html',
                controller: 'SetDetailCtrl'
            }).
            otherwise({
                redirectTo: '/sets'
        });
    }
]);
