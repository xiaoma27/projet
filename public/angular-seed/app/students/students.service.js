angular.module('myApp.students.service', ['ngResource'])

angular.module('myApp.students.service').factory('Students', function($resource) {
  return $resource('/students/:id.json') // Note the full endpoint address
});