wdk = require 'wikidata-sdk'
claims_ = require '../lib/claims'
errors_ = require '../lib/errors'

availableProperties = Object.keys claims_

module.exports =
  get: (req, res, next) ->
    { p, q } = req.query

    unless p in availableProperties
      errors_.e400 res, 'this property isnt available'
      return

    unless wdk.isWikidataId(q)
      errors_.e400 res, 'q isnt a valid wikidata id'
      return

    claims_[p](q)
    .then res.json.bind(res)
    .catch errors_.e500.bind(null, res)
