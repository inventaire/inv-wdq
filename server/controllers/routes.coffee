index = require './index'
claim = require './claim'

module.exports =
  '':
    get: index.get

  'claim':
    get: claim.get
