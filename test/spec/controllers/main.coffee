'use strict'

describe 'Ctrl', () ->
  beforeEach module 'evgenyneu.markdown-preview'

  beforeEach inject (@$window, $controller, $rootScope, @$httpBackend) ->
    @scope = $rootScope.$new()
    $controller 'Ctrl', { $scope: @scope }

  beforeEach ->
    @$window.marked = null
    spyOn(@$window, 'marked').andReturn('<h1>Header</h1>')

  describe 'initFromUrl', ->
    beforeEach ->
      @$httpBackend.expect('GET', '/url').respond('md form server')
      @scope.initFromUrl('/url')
      @$httpBackend.flush()

    it 'gets markdown text from server', ->
      expect(@$window.marked).toHaveBeenCalledWith('md form server')

  describe 'initFromText', ->
    beforeEach -> @scope.initFromText('some test **markdown**')
    it 'converts the text to html', ->
      expect(@$window.marked).toHaveBeenCalledWith('some test **markdown**')

  describe 'md2Html', ->
    beforeEach ->
      @scope.markdown = '# Header'
      @scope.md2Html()

    it 'calls marked', -> expect(@$window.marked).toHaveBeenCalledWith('# Header')
    it 'assigns html', -> expect(@scope.html).toBe('<h1>Header</h1>')
