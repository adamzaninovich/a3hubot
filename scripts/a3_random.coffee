# Description:
#   Random A3 Hubot Scripts
#
# Commands:

module.exports = (robot) ->
  robot.hear /\btesting\b/i, (msg) ->
    msg.send "I'm trying"
    robot.messageRoom 'A3', "skaljdhfgksajhgdfi - A3"
    robot.messageRoom 554655, "skaljdhfgksajhgdfi - id"

  robot.hear /\bdemeter\b/i, (msg) ->
    msg.send "http://i.imgur.com/Z0jvLNm.jpg"

  robot.hear /\bmad\b/i, (msg) ->
    msg.send "http://i1248.photobucket.com/albums/hh490/Andrea2awesome/internet-memes-y-u-mad-tho.jpg"

  robot.hear /\bangry\b/i, (msg) ->
    msg.send "http://i1248.photobucket.com/albums/hh490/Andrea2awesome/internet-memes-y-u-mad-tho.jpg"

  robot.hear /\brage\b/i, (msg) ->
    msg.send "http://i1248.photobucket.com/albums/hh490/Andrea2awesome/internet-memes-y-u-mad-tho.jpg"

