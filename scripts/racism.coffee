# Description:
#   A little Racism in Hubot
#   Author: Adam Zaninovich
#

module.exports = (robot) ->
  robot.respond /.*/i, (msg) ->
    nonAsciiString = (str) ->
      for i in [0..str.length]
        if str.charCodeAt(i) > 255
          true
        else
          false
    if nonAsciiString(msg.message.user.name)
      msg.send "Do I have to respond to this asshole?"
