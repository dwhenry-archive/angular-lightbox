'use strict'

angular.module('lightboxApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/reviews/:options',
        templateUrl: 'views/reviews.html'
        controller: 'ReviewsController'
      .when '/retailer_reviews/:options',
        templateUrl: 'views/retailer_reviews.html'
        controller: 'RetailerReviewsController'
      .when '/ask_an_owner/:options',
        templateUrl: 'views/ask_an_owner.html'
        controller: 'AskAnOwnerController'
      .otherwise
        redirectTo: 'reviews/locale=en-GB;sku=AO103019;trkref=ATL'
