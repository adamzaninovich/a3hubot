# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - Reply with pong
#   hubot echo <text> - Reply back with <text>
#   hubot time - Reply with current time
#   hubot die - End hubot process

module.exports = (robot) ->
  robot.respond /ping$/i, (msg) ->
    msg.send "PONG"

  robot.respond /echo (.*)$/i, (msg) ->
    msg.send msg.match[1]

  robot.respond /time$/i, (msg) ->
    msg.send "Server time is: #{new Date()}"

  robot.respond /die$/i, (msg) ->
    msg.send "http://i.imgur.com/DgczUtV.png"

  robot.respond /update/i, (msg) ->
    setTimeout 1000, -> process.exit 0
    msg.send "Updating my bad self..."
