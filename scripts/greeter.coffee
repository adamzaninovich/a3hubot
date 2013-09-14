enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
leaveReplies = ['Was it something I said?', 'Are you still there?', 'Target lost', 'Searching']

module.exports = (robot) ->
  robot.enter (msg) ->
    msg.send msg.random enterReplies
      robot.leave (msg) ->
    msg.send msg.random leaveReplies
