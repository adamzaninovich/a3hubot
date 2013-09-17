# Description:
#   Random A3 Hubot Scripts
#
# Commands:

module.exports = (robot) ->
  robot.hear /\bto+tally\b/i, (msg) ->
    msg.send "http://i.imgur.com/XuTdELg.jpg"
