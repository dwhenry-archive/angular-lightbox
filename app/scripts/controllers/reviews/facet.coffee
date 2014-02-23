'use strict'

angular.module('lightboxApp')
.controller 'FacetController', ($scope) ->
  $scope.width = () ->
    $scope.facet.score * 10



