angular.module('lightboxApp')
.service 'reviews',
  class Reviews
    constructor: (@$http) ->
    for: (options) =>
      @$http.get('http://localhost:3000/v4/organisations;trkref=EBU/reviewables;locale=en-GB;sku=569109/reviews')
      .then (reviewable, status, headers, config) ->
        return reviewable


