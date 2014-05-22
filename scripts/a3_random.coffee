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

  robot.hear /\bjavascript\b/i, (msg) ->
    msg.send "http://i.imgur.com/0zJMrpi.jpg"

  robot.hear /\bangry\b/i, (msg) ->
    msg.send "http://i1248.photobucket.com/albums/hh490/Andrea2awesome/internet-memes-y-u-mad-tho.jpg"

  robot.hear /\brage\b/i, (msg) ->
    msg.send "http://i1248.photobucket.com/albums/hh490/Andrea2awesome/internet-memes-y-u-mad-tho.jpg"

  robot.hear /\bnope\b/i, (msg) ->
    nopes = ["http://i.imgur.com/yBE4JbR.jpg", "http://i.imgur.com/DgczUtV.png"]
    msg.send msg.random nopes # nope nope nope

  robot.hear /\bbusted\b/i, (msg) ->
    msg.send "http://i.imgur.com/MasM57I.png" # busted!

  robot.hear /\bdevops\b/i, (msg) ->
    msg.send "http://i.imgur.com/Ujxb5gn.png" # worked fine in dev, ops problem now

  robot.hear /\bbeemo\b/i, (msg) ->
    msg.send "http://25.media.tumblr.com/tumblr_lwxdpiz2nL1r32wpdo1_400.gif" # beemo is a dancing machine

  robot.hear /\bto+t(ally|es)\b/i, (msg) ->
    num = msg.random [0..9]
    if num % 4 is 0
      msg.send "http://i.imgur.com/XuTdELg.jpg" # shiva tooootally
    else if num == 2
      msg.send "http://i.imgur.com/4hSczvR.png" # totes ma gotes
    else
      os = Array(num + 1).join 'o'
      msg.send "to#{os}tes"

  robot.respond /a?re? y?o?u drunk/i, (msg) ->
    msg.send "http://i.imgur.com/6soruXq.jpg" # drunk robot is drunk

  robot.respond /do (yo)?u work( )?out/i, (msg) ->
    msg.send "http://i.imgur.com/EoqKfIx.jpg" # workout robot works out

  robot.respond /.*I love you/i, (msg) ->
    msg.reply "I love you too"

  robot.hear /^IT IS DECIDED\!?$/, (msg) ->
    msg.send "http://i.imgur.com/80PQSCo.gif" # IT IS DECIDED

  robot.hear /oh? (yo)?u so/i, (msg) ->
    things = ["special", "clever", "crazy", "silly"]
    msg.send "oh you so #{msg.random things}"

