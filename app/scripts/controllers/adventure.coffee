'use strict'
angular.module('llamaApp')
	.controller 'AdventureCtrl', ($scope, $interval) ->
		$scope.awesomeThings = []
		$scope.test = 'TEEEEEST'
		console.log $scope.username
		console.log $scope.pageOneCountdown
		if $scope.pageOneCountdown == true
			console.log 'TRUE'
			$scope.pageOneLines = $interval(->
				console.log 'EY'
				$scope.showLine = $scope.showLine + 1
				return
			, 3000)
		return