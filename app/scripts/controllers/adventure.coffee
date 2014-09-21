'use strict'
angular.module('llamaApp')
	.controller 'AdventureCtrl', ($scope, $interval) ->
		$scope.questionOneCorrect = undefined
		$scope.questionTwoCorrect = undefined
		$scope.questionThreeCorrect = undefined
		$scope.questionFourCorrect = undefined

		$scope.pageOneCountdownSet = ->
			$interval ->
				$scope.showLine = $scope.showLine + 1
			, 2000
			return

		$scope.pageTwoCountdownSet = ->
			$interval ->
				$scope.showLineTwo = $scope.showLineTwo + 1
			, 2000
			return

		$scope.pageTwoNegCountdownSet = ->
			$interval ->
				$scope.showLineTwoNeg = $scope.showLineTwoNeg + 1
			, 2000
			return

		$scope.pageThreeCountdownSet = ->
			$interval ->
				$scope.showLineThree = $scope.showLineThree + 1
			, 2000
			return

		$scope.checkAnswers = ->
			$scope.totalCorrect = 0
			$scope.questionOneAnswer = $scope.questionOneAnswer.toLowerCase()
			$scope.questionTwoAnswer = $scope.questionTwoAnswer.toLowerCase()
			$scope.questionThreeAnswer = $scope.questionThreeAnswer.toLowerCase()
			$scope.questionFourAnswer = $scope.questionFourAnswer.toLowerCase()

			if $scope.questionOneAnswer == 'y' || $scope.questionOneAnswer == 'yes'
				$scope.questionOneCorrect = true
				$scope.totalCorrect = $scope.totalCorrect + 1
			else
				$scope.questionOneCorrect = false
			
			if $scope.questionTwoAnswer == 'y' || $scope.questionTwoAnswer == 'yes'
				$scope.questionTwoCorrect = true
				$scope.totalCorrect = $scope.totalCorrect + 1
			else
				$scope.questionTwoCorrect = false

			if $scope.questionThreeAnswer == 'y' || $scope.questionThreeAnswer == 'yes'
				$scope.questionThreeCorrect = true
				$scope.totalCorrect = $scope.totalCorrect + 1
			else
				$scope.questionThreeCorrect = false
			
			if $scope.questionFourAnswer == 'y' || $scope.questionFourAnswer == 'yes'
				$scope.questionFourCorrect = true
				$scope.totalCorrect = $scope.totalCorrect + 1
			else
				$scope.questionFourCorrect = false