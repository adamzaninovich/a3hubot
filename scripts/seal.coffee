# Description:
#   Approve things in style
#
# Commands:
#   hubot approve it
#   hubot approved
#   hubot its approved
#

_ = require("underscore")

all_seals = [
  "http://www.reactiongifs.com/r/seal-of-approval2.gif"
  "http://media.treehugger.com/assets/images/2013/10/seal-of-approval-meme.jpg"
  "http://fc01.deviantart.net/fs70/f/2010/095/a/4/seal_of_approval_by_Prometheus_plus_fire.jpg"
  "http://wishes.debian.co.nz/images/gallery/funny/seal-of-approval.jpg"
  "http://1-ps.googleusercontent.com/x/www.dailydawdle.com/images.dailydawdle.com/xseal-of-approval.jpg.pagespeed.ic.QfEqEJViDz.jpg"
  "http://www.quickmeme.com/img/ec/ec81c3d0d2793a41ddcea3d4784113dae77f897a058404c89627b53ea6c19d74.jpg"
]

module.exports = (robot) ->
  robot.respond /(it's )?approved?( it)?/i, (msg) -> msg.send msg.random all_seals

