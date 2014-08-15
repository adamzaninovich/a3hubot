# Description:
#   Random A3 Hubot Scripts
#
# Commands:

module.exports = (robot) ->
  robot.hear /debug/i, (msg) ->
    console.log msg

  robot.hear /(c'?m|come )on @?son|@?son\!/i, (msg) ->
    msg.send "http://i.imgur.com/WGxmlh4.jpg"

  robot.hear /\bhmm*\b/i, (msg) ->
    msg.send "http://i.imgur.com/4PaAUu5.png" # pensive nate

  robot.hear /\bdemeter\b/i, (msg) ->
    msg.send "http://i.imgur.com/Z0jvLNm.jpg" # say demeter one more time

  robot.hear /\bgrapes\b/i, (msg) ->
    msg.send "http://i.imgur.com/v4y3BLl.gif" # fuck yo grapes

  robot.hear /\b(wub ?(wub)?|dub(step)?|d+rop.*bas(s|e))\b/i, (msg) -> # ddddddrop the bass
    wubs = [
      "http://s3-ec.buzzfed.com/static/enhanced/webdr03/2013/2/15/9/anigif_enhanced-buzz-27236-1360939858-5.gif"
      "http://s3-ec.buzzfed.com/static/enhanced/webdr01/2013/2/15/9/anigif_enhanced-buzz-5139-1360939681-14.gif"
      "http://s3-ec.buzzfed.com/static/enhanced/webdr02/2013/2/15/11/enhanced-buzz-3235-1360947432-2.jpg"
      "http://i1212.photobucket.com/albums/cc460/bbtlv/dubstep.gif"
      "http://i.imgur.com/kUtovs7.gif"
    ]
    msg.send msg.random wubs

  robot.hear /\b(mad|angry|rage)\b/i, (msg) ->
    mads = [ "http://24.media.tumblr.com/e48acd4c34a62200a81df7259ab31d57/tumblr_n2kygg41US1rzgx44o1_400.gif",
      "http://i1248.photobucket.com/albums/hh490/Andrea2awesome/internet-memes-y-u-mad-tho.jpg"
      "http://i.imgur.com/KEh9WOT.png" ]
    msg.send msg.random mads

  robot.hear /\bnope\b/i, (msg) ->
    nopes = ["http://i.imgur.com/yBE4JbR.jpg", "http://i.imgur.com/DgczUtV.png"]
    msg.send msg.random nopes # nope nope nope

  robot.hear /\bbusted\b/i, (msg) ->
    msg.send "http://i.imgur.com/MasM57I.png" # busted!

  robot.hear /\bdevops\b/i, (msg) ->
    msg.send "http://i.imgur.com/Ujxb5gn.png" # worked fine in dev, ops problem now

  robot.hear /\bbeemo\b/i, (msg) ->
    msg.send "http://25.media.tumblr.com/tumblr_lwxdpiz2nL1r32wpdo1_400.gif" # beemo is a dancing machine

  robot.hear /\bcache\b/i, (msg) ->
    msg.send "http://29.media.tumblr.com/tumblr_lucazumFaJ1qela0oo1_500.png" # cash

  robot.hear /\bto+t(ally|es)\b/i, (msg) ->
    num = msg.random [0..9]
    if num % 4 is 0
      msg.send "http://i.imgur.com/XuTdELg.jpg" # shiva tooootally
    else if num == 2
      msg.send "http://i.imgur.com/4hSczvR.png" # totes ma gotes
    else
      os = Array(num + 1).join 'o'
      msg.send "to#{os}tally"

  robot.respond /a?re? y?o?u drunk/i, (msg) ->
    msg.send "http://i.imgur.com/6soruXq.jpg" # drunk robot is drunk

  robot.respond /download( more)? ram/i, (msg) ->
    msg.send "downloading all the RAMs..."

  robot.respond /do (yo)?u work( )?out/i, (msg) ->
    msg.send "http://i.imgur.com/EoqKfIx.jpg" # workout robot works out

  robot.respond /hubot.*I love you|I love you.*hubot/i, (msg) ->
    msg.reply "aww, I love you too!"

  robot.hear /^IT IS DECIDED\!?$/, (msg) ->
    msg.send "http://i.imgur.com/80PQSCo.gif" # IT IS DECIDED

  robot.hear /oh? (yo)?u so/i, (msg) ->
    things = ["special", "clever", "crazy", "silly"]
    msg.send "oh you so #{msg.random things}"

  robot.hear /\bmind blown\b/i, (msg) ->
    msg.send "http://www.ripcitybadboys.com/wp-content/uploads/2014/02/mind-blown-2.gif" # mind blown

