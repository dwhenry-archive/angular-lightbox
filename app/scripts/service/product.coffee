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
  {
    name: 'Atlantis The Palm',
    img: '//images.reevoo.com/retailer_products/1016001/1016001952/90x90.jpg?timestamp=1367484315',
    score_image_offset: '-8690.0px',
    overall_score: 8.8,
    review_count: 1193
  }
