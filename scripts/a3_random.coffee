# Description:
#   Random A3 Hubot Scripts
#
# Commands:

module.exports = (robot) ->
  robot.hear /debug/i, (msg) ->
    console.log msg

  robot.hear /\bdemeter\b/i, (msg) ->
    msg.send "http://i.imgur.com/Z0jvLNm.jpg"

  robot.hear /\bmad\b/i, (msg) ->
    msg.send "http://i1248.photobucket.com/albums/hh490/Andrea2awesome/internet-memes-y-u-mad-tho.jpg"

  robot.hear /\bangry\b/i, (msg) ->
    msg.send "http://i1248.photobucket.com/albums/hh490/Andrea2awesome/internet-memes-y-u-mad-tho.jpg"

  robot.hear /\brage\b/i, (msg) ->
    msg.send "http://i1248.photobucket.com/albums/hh490/Andrea2awesome/internet-memes-y-u-mad-tho.jpg"

  robot.hear /\bto+tally\b/i, (msg) ->
    msg.send "http://i.imgur.com/XuTdELg.jpg"
