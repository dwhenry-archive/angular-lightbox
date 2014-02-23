ProductData = (selector_options) ->
  @data = {
    name: 'Atlantis The Palm',
    img: '//images.reevoo.com/retailer_products/1016001/1016001952/90x90.jpg?timestamp=1367484315',
    score_image_offset: '-8690.0px',
    overall_score: 8.8,
    review_count: 1193
  }

angular.module('lightboxApp')
.factory 'Product', () ->
  new ProductData()


angular.module('lightboxApp')
.service 'product',
  class Product
    constructor: (@reviews) ->
    for: (options) =>
      @reviews.for(options)
      .then (reviewable) ->
        return {
          name: reviewable.parent.reviewable.name,
          img: reviewable.parent.reviewable.image_url,
          overall_score: @overall_score(reviewable.facets),
          review_count: reviewable.locale_and_review_count[@locale]
        }

    overall_score: (facets) ->
      filtered_facets = facets.filter (x) -> x.tag == 'overall'
      stats = filtered_facets[0].statistics
      stats.summation / stats.respondents

    locale: () ->
      'en-GB'

