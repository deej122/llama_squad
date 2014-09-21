'use strict'
angular.module('llamaApp')
	.controller 'StudyCtrl', ($scope) ->
		$scope.qa = [
			{
				question: 'How big do llamas generally get?',
				answer: 'Llamas can grow to a height of around 6 feet and can weigh between 280 and 450 pounds. They are considered large animals.',
				quiz: false
			},
			{
				question: 'Do llamas eat meat?',
				answer: 'No, llamas do not eat meat. They are herbivores.',
				quiz: true
			},
			{
				question: 'Are llamas all the same color?',
				answer: "No, llama's wool can range in color from black to grey to even white or brown.",
				quiz: false
			},
			{
				question: 'What is a llama with a short coat of hair called? A medium-length coat of hair?',
				answer: 'Llamas with a short coat of hair are called Ccara. Those with medium-length hair are known as Curaca.',
				quiz: false
			},
			{
				question: 'Are llamas generally intelligent animals?',
				answer: 'Yes, llamas are considered very intelligent and brave animals, but are also known to be quite stubborn. They are essentially the entrepreneurs of the animal world. [Rimshot - crowd laughs].',
				quiz: true
			},
			{
				question: 'What characteristics make the llama good at detecting danger?',
				answer: 'Llamas have an excellent sense of sight, smell, and hearing which helps them detect potential danger. They also have an inherited fear of dog-like animals which makes them the ideal "guards" for sheep.',
				quiz: false
			},
			{
				question: 'Do llamas have hooves?',
				answer: 'No, llamas do not have hooves. Instead, they have two toenails on each foot with a thick, leathery pad on the bottom of their feet.',
				quiz: true
			},
			{
				question: 'Are llamas the same as alpacas?',
				answer: 'No, no, no! Llamas and alpacas are not the same and, among a plethora of other differences, alpacas tend to be much smaller than llamas. Basically, alpacas are lame and llamas are awesome.',
				quiz: true
			}
		]
		return