angular.module('lightboxApp')
.service 'reviews',
  class Reviews
    constructor: (@$http) ->
    for: (options) =>
      url = 'http://localhost:3000/v4/organisations;' +
            options.organisations +
            '/reviewables;' +
            options.reviewables +
            '/reviews'
      @$http.get(url)
      .then (reviewable, status, headers, config) ->
        return reviewable.data


