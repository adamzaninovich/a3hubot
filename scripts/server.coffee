module.exports = (robot) ->
  robot.router.get '/say', (req, res) ->
    console.log req
    data = req.query.message
    robot.messageRoom 554655, "#{data}"
    res.end 'OK'
