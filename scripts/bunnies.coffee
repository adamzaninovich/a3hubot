# Description:
#   bunnies and shit
#
module.exports = (robot) ->
  robot.respond /bunny me/i, (msg) ->
    msg.send "http://cachemonet.com/src/bg/bunnies.gif"
