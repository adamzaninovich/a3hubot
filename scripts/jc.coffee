# Description:
#   Everyone loves JC
#
# Commands:
#   hubot jc me
#   hubot jc bomb
#

_ = require("underscore")

all_jons = [
  "http://i.imgur.com/01ABSlt.jpg?1"
  "http://i.imgur.com/wNL5RWi.jpg"
  "http://i.imgur.com/xpgpdq1.png"
  "http://i.imgur.com/Z2GOal6.png"
  "http://i.imgur.com/tpyYxju.png"
  "http://i.imgur.com/xbU4UC0.jpg"
  "http://i.imgur.com/hA7O8Ws.jpg"
  "http://i.imgur.com/w8gfBPf.png"
  "http://i.imgur.com/hA7O8Ws.jpg"
  "http://i.imgur.com/pCWQLh5.jpg"
  "http://i.imgur.com/sPtdtvd.jpg"
  "http://i.imgur.com/wu6050H.jpg"
  "http://i.imgur.com/sjK3ouC.jpg"
  "http://i.imgur.com/eygXc8r.jpg"
  "http://i.imgur.com/POgcwka.jpg"
  "http://i.imgur.com/HgnGWGA.jpg"
  "http://i.imgur.com/OE53NDx.jpg"
  "http://i.imgur.com/BWSMtml.png"
  "http://i.imgur.com/mLWkm71.png"
  "http://i.imgur.com/5rUQGBb.png"
  "http://i.imgur.com/jcdI1tb.png"
  "http://i.imgur.com/9oeugDL.png"
  "http://i.imgur.com/v8t8pBc.png"
  "http://i.imgur.com/o41ljGE.gif"
  "http://i.imgur.com/o41ljGE.gif"
  "http://i.imgur.com/o41ljGE.gif"
  "http://i.imgur.com/o41ljGE.gif"
  "http://i.imgur.com/o41ljGE.gif"
]

module.exports = (robot) ->
  robot.respond /(JC|Jon|Jon Christopher)( me)?/i, (msg) -> msg.send msg.random all_jons
  robot.respond /(JC|Jon|Jon Christopher) bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || all_jons.length
    jons = (_.shuffle all_jons)[0...count-2]
    jons.push "http://i.imgur.com/o41ljGE.gif"
    msg.send jon for jon in jons

