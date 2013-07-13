'use strict';

angular.module('evgenyneu.markdown-preview')
  .directive('iiMdPreview', () ->
    template: "
<div>
  <textarea class='MdPreview-markdown' name='{{textareaName}}' ng-model='markdown' ng-change='md2Html()'></textarea>
  <div class='MdPreview-html' ng-bind-html-unsafe='html' />
</div>",
    restrict: 'C',
    replace: true,
    controller: 'Ctrl',
    scope: {},
    link: (scope, element, attrs) ->
      scope.initFromUrl(attrs.url) if attrs.url
      scope.initFromText(attrs.text) if attrs.text
      scope.textareaName = attrs.textareaName
  )


