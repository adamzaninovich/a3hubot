# Description:
#   A little Racism in Hubot
#   Author: Nathaniel Barnes
#

module.exports = (robot) ->
  robot.respond /.*/i, (msg) ->
    nonAsciiString = (str) ->
      for i in [0..str.length]
        if str.charCodeAt(i) > 255
          return true
      false
    if nonAsciiString(msg.message.user.name)
      msg.send "Do I have to respond to this asshole?"
