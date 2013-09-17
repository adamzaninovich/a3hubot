# Description:
#   says hi and bye
#

enter_replies = ["oh hai", "Hello friend.", "Sup homes", "Hay girl haaay", "Welcome to the... DANGERZONE"]
leave_replies = ["Was it something I said?", "Toodles", "I didn't like them anyway"]

module.exports = (robot) ->
  robot.messageRoom 554655, "T'was a dream"

  robot.enter (msg) ->
    msg.send msg.random enter_replies

  robot.leave (msg) ->
    msg.send msg.random leave_replies
