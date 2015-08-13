wdk = require 'wikidata-sdk'
couch_ = require 'inv-couch'

couchWrapper = require '../lib/couch_wrapper'
designDocName = 'claims'
db = couchWrapper 'wdq', designDocName

module.exports =
  P50: (q)->
    key = Number wdk.getNumericId(q)

    db.view designDocName, 'P50', { key: key }
    .then couch_.mapId
    .then mimicWdqResponse

mimicWdqResponse = (ids)-> {items: ids}
