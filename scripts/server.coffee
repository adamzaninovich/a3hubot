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
    setTimeout 1000, -> process.exit 0
    robot.messageRoom 'random', "Oh sheesh y'all, time to update my bad self", message

  robot.router.get '/say', (req, res) ->
    robot.messageRoom 'random', "#{req.query.message}"
    res.end "#{req.query.message}"
