(function() {
  'use strict';
  angular.module('evgenyneu.markdown-preview', []);

}).call(this);

(function() {
  'use strict';
  angular.module('evgenyneu.markdown-preview').controller('Ctrl', function($scope, $window, $http) {
    $scope.md2Html = function() {
      return $scope.html = $window.marked($scope.markdown);
    };
    $scope.initFromUrl = function(url) {
      return $http.get(url).success(function(data) {
        $scope.markdown = data;
        return $scope.md2Html();
      });
    };
    return $scope.initFromText = function(text) {
      $scope.markdown = text;
      return $scope.md2Html();
    };
  });

}).call(this);

(function() {
  'use strict';
  angular.module('evgenyneu.markdown-preview').directive('iiMdPreview', function() {
    return {
      template: "<div>  <textarea class='MdPreview-markdown' name='{{textareaName}}' ng-model='markdown' ng-change='md2Html()'></textarea>  <div class='MdPreview-html' ng-bind-html-unsafe='html' /></div>",
      restrict: 'C',
      replace: true,
      controller: 'Ctrl',
      scope: {},
      link: function(scope, element, attrs) {
        if (attrs.url) {
          scope.initFromUrl(attrs.url);
        }
        if (attrs.text) {
          scope.initFromText(attrs.text);
        }
        return scope.textareaName = attrs.textareaName;
      }
    };
  });

}).call(this);
