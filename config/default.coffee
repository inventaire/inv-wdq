module.exports =
  db:
    protocol: 'http'
    host: 'localhost'
    port: 5984
    username: 'yourcouchdbusername'
    password: 'yourcouchdbpassword'
    auth: -> "#{@username}:#{@password}"
