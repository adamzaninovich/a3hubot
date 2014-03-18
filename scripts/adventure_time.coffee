# Description:
#   Adventure Time!
#
# Commands:

module.exports = (robot) ->

  robot.hear /\bright on,? right on\b/i, (msg) ->
    msg.send "https://www.youtube.com/watch?v=QZE3STUXphM"

  robot.respond /what time is it/i, (msg) ->
    msg.send "http://img2.wikia.nocookie.net/__cb20131115044705/adventuretimewithfinnandjake/images/5/53/Adventure_Time-1920x1080.png"
