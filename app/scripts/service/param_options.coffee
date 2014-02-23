
angular.module('lightboxApp')
.factory 'paramOptions', ($routeParams) ->
  params = {}
  angular.forEach $routeParams.options.split(';'), (value) ->
    key_value = value.split('=')
    params[key_value[0]] = key_value[1]

  {
    organisations: 'trkref=' + params.trkref,
    reviewables: 'locale=' + params.locale + ';sku=' + params.sku
  }



