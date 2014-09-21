'use strict'

describe 'Directive: typewrite', ->

  # load the directive's module
  beforeEach module 'llamaApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<typewrite></typewrite>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the typewrite directive'
