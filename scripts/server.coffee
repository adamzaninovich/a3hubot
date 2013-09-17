module.exports = (robot) ->
  robot.router.get '/hubot/say/:stuff', (req, res) ->
    stuff = req.params.stuff
    #data = JSON.parse req.body.payload
    robot.messageRoom 554655, "#{stuff}"
    res.end 'OK'
