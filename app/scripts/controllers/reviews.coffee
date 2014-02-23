'use strict'

angular.module('lightboxApp')
.controller 'ReviewsController', ($scope, review) ->
  $scope.currentLightboxType = 'reviews'

  review.for({}).then (data) ->
    $scope.reviews = data
