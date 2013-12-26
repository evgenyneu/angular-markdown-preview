'use strict'

describe 'Directive: iiMdPreview', ->
  beforeEach module 'evgenyneu.markdown-preview'

  beforeEach ->
    @spyInitFromUrl = jasmine.createSpy()
    @spyInitFromText = jasmine.createSpy()

    angular.module('evgenyneu.markdown-preview').controller('Ctrl', ($scope) =>
      $scope.initFromUrl = @spyInitFromUrl
      $scope.initFromText = @spyInitFromText
    )

  beforeEach(inject((@$rootScope, @$compile) ->
    @compileMdPreview = (markup, scope) ->
      el = $compile(markup)(scope)
      scope.$digest()
      el
  ))

  describe 'with url attribute', ->
    beforeEach ->
      @compileMdPreview("<div class='iiMdPreview' url='/test-url' />", @$rootScope)

    it '', -> expect(@spyInitFromUrl).toHaveBeenCalledWith('/test-url')
    it '', -> expect(@spyInitFromText).not.toHaveBeenCalled()

  describe 'with text attribute', ->
    beforeEach ->
      @compileMdPreview("<div class='iiMdPreview' text='this is a text' />", @$rootScope)

    it '', -> expect(@spyInitFromText).toHaveBeenCalledWith('this is a text')
    it '', -> expect(@spyInitFromUrl).not.toHaveBeenCalled()