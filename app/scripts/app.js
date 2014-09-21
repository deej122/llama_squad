'use strict';

angular
  .module('llamaApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/adventure', {
        templateUrl: 'views/adventure.html',
        controller: 'AdventureCtrl'
      })
      .when('/studyup', {
        templateUrl: 'views/studyup.html',
        controller: 'StudyCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
