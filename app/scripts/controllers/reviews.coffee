'use strict'

angular.module('lightboxApp')
.controller 'ReviewsController', ($scope, review, paramOptions) ->
  $scope.currentLightboxType = 'reviews'

  $scope.options = paramOptions

  review.for($scope.options).then (data) ->
    $scope.reviews = data

