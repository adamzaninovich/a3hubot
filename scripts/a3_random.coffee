# Description:
#   Random A3 Hubot Scripts
#
# Commands:

module.exports = (robot) ->
  robot.hear /debug/i, (msg) ->
    console.log msg

# robot.hear /\b(tdd|r?specs?|test(ing)?s?|minitest)\b/i, (msg) ->
#   msg.send "http://i.imgur.com/nrGvcQH.jpg" # test all the things

  robot.hear /\bdemeter\b/i, (msg) ->
    msg.send "http://i.imgur.com/Z0jvLNm.jpg" # say demeter one more time

  robot.hear /\bmad\b/i, (msg) ->
    msg.send "http://i1248.photobucket.com/albums/hh490/Andrea2awesome/internet-memes-y-u-mad-tho.jpg"

  robot.hear /\bangry\b/i, (msg) ->
    msg.send "http://i1248.photobucket.com/albums/hh490/Andrea2awesome/internet-memes-y-u-mad-tho.jpg"

  robot.hear /\brage\b/i, (msg) ->
    msg.send "http://i1248.photobucket.com/albums/hh490/Andrea2awesome/internet-memes-y-u-mad-tho.jpg"

  robot.hear /\bnope\b/, (msg) ->
    msg.send "http://i.imgur.com/DgczUtV.png" # nope nope nope

  robot.hear /\bbusted\b/, (msg) ->
    msg.send "http://i.imgur.com/MasM57I.png" # busted!

  robot.hear /\bdevops\b/, (msg) ->
    msg.send "http://i.imgur.com/Ujxb5gn.png" # worked fine in dev, ops problem now

  robot.hear /\bto+tally\b/i, (msg) ->
    num = msg.random [0..9]
    if num % 4 is 0
      msg.send "http://i.imgur.com/XuTdELg.jpg" # shiva tooootally
    else
      os = Array(num + 1).join 'o'
      msg.send "to#{os}tally"

  robot.respond /a?re? y?o?u drunk/i, (msg) ->
    msg.send "http://i.imgur.com/6soruXq.jpg" # drunk robot is drunk

  robot.respond /do (yo)?u work( )?out/i, (msg) ->
    msg.send "http://i.imgur.com/EoqKfIx.jpg" # workout robot works out

  robot.respond /.*I love you/i, (msg) ->
    msg.reply "I love you too"

  robot.hear /^IT IS DECIDED\!?$/, (msg) ->
    msg.send "http://i.imgur.com/80PQSCo.gif" # IT IS DECIDED

  robot.respond /(JC|Jon|Jon Christopher)( me)?/i, (msg) ->
    msg.send msg.random [
      "http://i.imgur.com/01ABSlt.jpg?1",
      "http://i.imgur.com/wNL5RWi.jpg",
      "http://i.imgur.com/xpgpdq1.png"
    ]
