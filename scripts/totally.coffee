# Description:
#   Random A3 Hubot Scripts
#
# Commands:

module.exports = (robot) ->
  robot.hear /\btotally\b/i, (msg) ->
    msg.send "tooooootallly"
    msg.send "http://i.imgur.com/ulvD5Le.gif"
