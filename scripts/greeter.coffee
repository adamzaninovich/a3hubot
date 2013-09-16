enterReplies = ['oh hai {msg.message.user.name}', 'Hello {msg.message.user.name}.', 'Sup {msg.message.user.name}', 'Haaay {msg.message.user.name}', '{msg.message.user.name}...Welcome to the... DANGERZONE']
leaveReplies = ['Was it something I said?', 'Toodles {msg.message.user.name}', "I didn't like them anyway"]

module.exports = (robot) ->
  robot.messageRoom 'A3', "I'm back bitches"
  robot.enter (msg) ->
    msg.send msg.random enterReplies
  robot.leave (msg) ->
    msg.send msg.random leaveReplies
