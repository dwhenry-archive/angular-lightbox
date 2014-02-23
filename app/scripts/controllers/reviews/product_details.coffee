'use strict'

angular.module('lightboxApp')
.controller 'ProductDetailsController', ($scope, product) ->

  product.for($scope.options).then (productData) ->
    $scope.product = productData

  $scope.score_image_offset = () ->
    if $scope.product != undefined
      score = parseInt($scope.product.overall_score * 10)
      (score * -110) + (110 * 9)

  $scope.facets = [
    {name: 'Location', score: '9.0'},
    {name: 'Cleanliness', score: '9.4'},
    {name: 'Service', score: '9.0'},
    {name: 'Food & Beverage', score: '8.7'},
    {name: 'Recreation and Water park', score: '9.3'},
    {name: 'Value for money', score: '8.1', class: 'value-for-money'},
    {name: 'Overall Score', score: '8.8', class: 'overall'}
  ]


