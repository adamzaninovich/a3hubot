# Description:
#   Some routes for hubot including the update endpoint
#

module.exports = (robot) ->
  robot.router.post '/update', (req, res) ->
    data = JSON.parse req.body.payload
    message = ""
    for commit in data.commits
      do (commit) ->
        message += "#{commit.author.name} pushed \"#{commit.message}\"\n"
    robot.messageRoom 'C025Q5H6V', "Oh sheesh y'all, time to update my bad self", message, ->
      process.exit 0

  robot.router.get '/say', (req, res) ->
    robot.messageRoom 'random', "#{req.query.message}", ->
      res.end "#{req.query.message}"
