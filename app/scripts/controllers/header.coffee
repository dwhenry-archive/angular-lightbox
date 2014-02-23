'use strict'

angular.module('lightboxApp')
.controller 'HeaderController', ($scope) ->
    types = [
      {type: 'reviews', name: 'Guest reviews'},
      {type: 'ask_an_owner', name: 'Ask a guest'},
      {type: 'retailer_reviews', name: 'Reviews of Atlantis, The Palm'},
    ]
    $scope.lightboxTypes = types

    $scope.currentPage = (index) ->
      $scope.lightboxTypes[index].type == $scope.currentLightboxType



