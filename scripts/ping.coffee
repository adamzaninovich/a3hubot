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
    #msg.send "Goodbye, cruel world.", ->
    #  process.exit 0

  robot.respond /update/i, (msg) ->
    if msg.message.user.id is "U025Q5H6D"
      msg.send "Updating my bad self...", ->
        process.exit 0
    else
      msg.send "http://i.imgur.com/DgczUtV.png"
