'use strict'

angular.module('evgenyneu.markdown-preview')
  .controller 'Ctrl', ($scope, $window, $http) ->
    $scope.md2Html = ->
      $scope.html = $window.marked($scope.markdown)

    $scope.initFromUrl = (url) ->
      $http.get(url).success((data) ->
        $scope.markdown = data
        $scope.md2Html()
      )

    $scope.initFromText = (text) ->
      $scope.markdown = text
      $scope.md2Html()