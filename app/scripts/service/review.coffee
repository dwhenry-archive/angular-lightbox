angular.module('lightboxApp')
.service 'review',
  class Review
    constructor: (@reviews) ->
    for: (options) =>
      @reviews.for(options)
      .then (reviewable) ->
        return reviewable.data.reviews


