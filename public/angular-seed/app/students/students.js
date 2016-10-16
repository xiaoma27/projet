'use strict';

angular.module('myApp.students', ['ngRoute', 'myApp.students.service'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/students', {
    templateUrl: 'students/students.html',
    controller: 'StudentsCtrl'
  });
}])

.controller('StudentsCtrl', ['$scope','Students',  function($scope,Students ) {
  $scope.students = Students.query(function(){
    console.log($scope.students);
  })
}]);