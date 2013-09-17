module.exports = (robot) ->
  robot.router.get '/update', (req, res) ->
    msg.send "Time to update!", "brb y'all", ->
      process.exit 0

  robot.router.get '/say', (req, res) ->
    data = req.query.message
    robot.messageRoom 554655, "#{data}"
    res.end 'OK'
