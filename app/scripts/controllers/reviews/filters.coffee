'use strict'

angular.module('lightboxApp')
.controller 'FiltersController', ($scope, product) ->

  product.for($scope.options)
  .then (productData) ->
    $scope.product = productData


# Segment Filter
angular.module('lightboxApp')
.controller 'FilterController', ($scope) ->

  $scope.filterName = 'All guests'
  $scope.showFilterOptions = false
  $scope.filters = [
    {name: 'All guests',  code: 'all'},
    {name: 'Couple',      code: 'couple'},
    {name: 'Family (the eldest child is at school)', code: 'family-the-eldest-child-is-at-school'},
    {name: 'Friends',     code: 'friends'},
    {name: 'Other',       code: 'other'}
  ]

  $scope.selectFilterOption = (index) ->
    $scope.filterName = $scope.filters[index].name
    $scope.showFilterOptions = false
    # "#/reevoomark/en-GB/product?page=1&retailer=ATL&sku=AO103019&segment={{filter.code}}"

  $scope.currentFilter = (index) ->
    $scope.filters[index].name == $scope.filterName

  $scope.toggleFilterOptions = () ->
    $scope.showFilterOptions = !$scope.showFilterOptions

# Sorting
angular.module('lightboxApp')
.controller 'SortController', ($scope) ->

  $scope.filterName = 'Most recent'
  $scope.showFilterOptions = false
  $scope.filters = [
    {code: 'recent',    name: 'Most recent'},
    {code: 'helpful',   name: 'Most helpful'},
    {code: 'score_asc', name: 'Lowest score'},
    {code: 'score_desc',name: 'Highest score'}
  ]

  $scope.selectFilterOption = (index) ->
    $scope.filterName = $scope.filters[index].name
    $scope.showFilterOptions = false
    # "#/reevoomark/en-GB/product?page=1&retailer=ATL&sku=AO103019&segment={{filter.code}}"

  $scope.currentFilter = (index) ->
    $scope.filters[index].name == $scope.filterName

  $scope.toggleFilterOptions = () ->
    $scope.showFilterOptions = !$scope.showFilterOptions
