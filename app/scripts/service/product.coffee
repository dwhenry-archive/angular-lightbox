
angular.module('lightboxApp')
.service 'product',
  class Product
    constructor: (@reviews, $q) ->
      @defer = $q.defer()
      @locale = 'en-GB'
    for: (options) =>
      _this = this
      @reviews.for(options).then (reviewable) ->
        overall_score = _this.overall_score(reviewable.summary.facets)
        data = {
          name: reviewable.summary.parent.reviewable.name,
          img: reviewable.summary.parent.reviewable.image_url.replace(/images.dev/, 'images.reevoo.com'),
          score_image_offset: _this.image_offset(overall_score),
          overall_score: overall_score,
          review_count: reviewable.summary.locale_and_review_count[_this.locale]
        }
        _this.defer.resolve(data)
      @defer.promise

    overall_score: (facets) ->
      filtered_facets = facets.filter (x) -> x.tag == 'overall'
      stats = filtered_facets[0].statistics
      stats.summation / stats.respondents

    image_offset: (score) ->
      (score * -600) + 540



