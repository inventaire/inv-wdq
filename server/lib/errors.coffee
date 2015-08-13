module.exports =
  e400: (res, message)->
    res.status 400
    res.json
      status_verbose: message


  e500: (res, err)->
    res.status 500
    res.json
      status_verbose: err.message
