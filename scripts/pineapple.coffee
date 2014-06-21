# Description:
#   Pineapple! PINEAPPLE!
#
# Commands:

module.exports = (robot) ->
  robot.hear /pineapple (.+)/i, (msg) ->
    msg.send "Pineapple #{msg.match[1]}, PINEAPPLE!"
    msg.send "That means shut the fuck up"

