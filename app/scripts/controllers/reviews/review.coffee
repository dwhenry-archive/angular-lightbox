'use strict'

angular.module('lightboxApp')
.controller 'ReviewController', ($scope) ->

  $scope.image_offset = ->
    ($scope.review.overall_score * -600) + 540
