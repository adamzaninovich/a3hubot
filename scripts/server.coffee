module.exports = (robot) ->
  robot.router.post '/update', (req, res) ->
    data = JSON.parse req.body.payload
    last_commit = data.commits.slice(-1).pop()
    message = "#{last_commit.author.name} pushed \"#{last_commit.message}\""
    robot.messageRoom 554655, message, ->
      process.exit 0

  robot.router.get '/say', (req, res) ->
    data = req.query.message
    robot.messageRoom 554655, "#{data}"
    res.end 'OK'
