# Description:
#   says hi and bye
#

random = (arr) -> arr[Math.floor(Math.random() * arr.length)]
boot_messages = ["T'was a dream", "I'm back bitches"]
enter_replies = ["oh hai", "Hello friend.", "Sup homes", "Hay girl haaay", "Welcome to the... DANGERZONE"]
leave_replies = ["Was it something I said?", "Toodles", "I didn't like them anyway", "So long, and thanks for all the fish.", "TTYL"]

module.exports = (robot) ->
  robot.messageRoom 'random', random boot_messages
  robot.enter (msg) -> msg.send msg.random enter_replies
  robot.leave (msg) -> msg.send msg.random leave_replies
