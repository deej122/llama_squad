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
			$scope.questionOneAnswerCheck = $scope.questionOneAnswer.toLowerCase()
			$scope.questionTwoAnswerCheck = $scope.questionTwoAnswer.toLowerCase()
			$scope.questionThreeAnswerCheck = $scope.questionThreeAnswer.toLowerCase()
			$scope.questionFourAnswerCheck = $scope.questionFourAnswer.toLowerCase()

			if $scope.questionOneAnswerCheck == 'y' || $scope.questionOneAnswerCheck == 'yes'
				$scope.questionOneCorrect = true
				$scope.totalCorrect = $scope.totalCorrect + 1
			else
				$scope.questionOneCorrect = false
			
			if $scope.questionTwoAnswerCheck == 'y' || $scope.questionTwoAnswerCheck == 'yes'
				$scope.questionTwoCorrect = true
				$scope.totalCorrect = $scope.totalCorrect + 1
			else
				$scope.questionTwoCorrect = false

			if $scope.questionThreeAnswerCheck == 'y' || $scope.questionThreeAnswerCheck == 'yes'
				$scope.questionThreeCorrect = true
				$scope.totalCorrect = $scope.totalCorrect + 1
			else
				$scope.questionThreeCorrect = false
			
			if $scope.questionFourAnswerCheck == 'n' || $scope.questionFourAnswerCheck == 'no'
				$scope.questionFourCorrect = true
				$scope.totalCorrect = $scope.totalCorrect + 1
			else
				$scope.questionFourCorrect = false