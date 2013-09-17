module.exports = (robot) ->
  robot.router.post '/update', (req, res) ->
    console.log "UPDATING"
    #data = JSON.parse req.body.payload
    robot.messageRoom 554655, "Time to update!", "brb y'all", ->
      process.exit 0

  robot.router.get '/say', (req, res) ->
    data = req.query.message
    robot.messageRoom 554655, "#{data}"
    res.end 'OK'
