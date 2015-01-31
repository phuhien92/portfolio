'use strict';



/**
 * @ngdoc overview
 * @name anhhongApp
 * @description
 * # anhhongApp
 *
 * Main module of the application.
 */

  var app = angular.module('anhhongApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute'
  ])

  app.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/home', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      }).
      when('/posts', {
        templateUrl: 'views/posts.html',
        controller: 'PostsCtrl'
      }).
      otherwise({
        redirectTo: '/home'
      });
  }])
