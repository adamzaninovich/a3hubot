# Description:
#   Land Before Time inspired Hubot Scripts
#
# Commands:
# Hubot Responds to:
#   "yep" - with pictures of duckie
#   "starptooth", "dentist" - with pictures of sharptooth

module.exports = (robot) ->
  # robot.hear /\byep\b/i, (msg) ->
  #   yeps = ["http://i.imgur.com/PYt1Q78.png","http://i.imgur.com/a4qBBkv.gif", "http://www.youtube.com/watch?v=cAEVzJnHv2c"]
  #   msg.send msg.random yeps #yep yep yep!

  robot.hear /sharptooth|dentist/i, (msg) ->
    tooths = ["http://i.imgur.com/MksAW33.jpg", "http://i.imgur.com/8PbXj9b.png"]
    msg.send msg.random tooths
