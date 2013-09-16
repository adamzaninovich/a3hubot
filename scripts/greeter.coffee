enterReplies = ['oh hai', 'Hello friend.', 'Sup homes', 'Hay girl haaay', 'Welcome to the... DANGERZONE']
leaveReplies = ['Was it something I said?', 'Toodles', "I didn't like them anyway"]

module.exports = (robot) ->
  robot.enter (msg) ->
    msg.send msg.random enterReplies
  robot.leave (msg) ->
    msg.send msg.random leaveReplies
