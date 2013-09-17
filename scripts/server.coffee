module.exports = (robot) ->
  robot.router.post '/update', (req, res) ->
    data = JSON.parse req.body.payload
    message = ""
    for commit in data.commits
      do (commit) ->
        message += "#{commit.author.name} pushed \"#{commit.message}\"\n"
    robot.messageRoom 554655, message, "Imma get me summa that!", ->
      process.exit 0

  robot.router.get '/say', (req, res) ->
    robot.messageRoom 554655, "#{req.query.message}", ->
      res.end "#{req.query.message}"
