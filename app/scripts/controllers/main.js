'use strict';

angular.module('SpreadSheetApp')
  .controller('MainCtrl', function ($scope, $parse) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    $scope.columns = ['A', 'B', 'C', 'D'];
    $scope.rows = [1, 2, 3, 4];
    $scope.cells = {};
    $scope.compute = function(cell) {
    	return $parse($scope.cells[cell])($scope);
    };
  });
