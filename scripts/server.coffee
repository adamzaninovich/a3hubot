module.exports = (robot) ->
  robot.router.get '/', (req, res) ->
    #data = JSON.parse req.body.payload
    robot.messageRoom 554655, "hello from the web"
    res.end 'OK'
