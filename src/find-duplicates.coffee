'use strict'

_ = require('lodash')

prettyPrint = (data) ->
  console.log JSON.stringify(
    _.sample(data, 10),
    null,
    2
  )

findDuplicates = (skus) ->
  return _.chain(skus)
    .groupBy( (sku) ->
      return sku
    )
    .tap( (skus) ->
      console.log "----------------------------------------"
      console.log "Grouped:"
      prettyPrint(skus)
    )
    .pairs()
    .tap( (skus) ->
      console.log "----------------------------------------"
      console.log "Paired:"
      prettyPrint(skus)
    )
    .filter( (item) ->
      return item[1].length > 1
    )
    .tap( (skus) ->
      console.log "----------------------------------------"
      console.log "Filtered:"
      prettyPrint(skus)
    )
    .map( (item) ->
      return item[0]
    )
    .tap( (skus) ->
      console.log "----------------------------------------"
      console.log "Mapped:"
      prettyPrint(skus)
    )
    .sortBy( (sku) ->
      return sku
    )
    .tap( (skus) ->
      console.log "----------------------------------------"
      console.log "Sorted:"
      prettyPrint(skus)
    )
    .value()

module.exports = findDuplicates
