module.exports = (robot) ->
  robot.router.get '/update', (req, res) ->
    data = req.body.payload
    robot.messageRoom 554655, "#{data}"
    res.end 'OK'
