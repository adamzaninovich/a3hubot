module.exports = (robot) ->
  robot.router.get '/update', (req, res) ->
    console.log req
    data = 'logging to console'
    robot.messageRoom 554655, "#{data}"
    res.end 'OK'
