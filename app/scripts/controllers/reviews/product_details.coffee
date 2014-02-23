'use strict'

angular.module('lightboxApp')
.controller 'ProductDetailsController', ($scope, Product) ->

  $scope.product = Product

  $scope.facets = [
    {name: 'Location', score: '9.0'},
    {name: 'Cleanliness', score: '9.4'},
    {name: 'Service', score: '9.0'},
    {name: 'Food & Beverage', score: '8.7'},
    {name: 'Recreation and Water park', score: '9.3'},
    {name: 'Value for money', score: '8.1', class: 'value-for-money'},
    {name: 'Overall Score', score: '8.8', class: 'overall'}
  ]



