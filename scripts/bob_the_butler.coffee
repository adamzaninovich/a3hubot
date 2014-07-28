# Description:
#   Bob the Butler
#
# Commands:
#
# butler

module.exports = (robot) ->
  robot.hear /\bbutler\b/i, (msg) ->
    msg.send "http://i.imgur.com/03Z2wsy.jpg"
