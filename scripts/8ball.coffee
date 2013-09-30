# Description:
#   Magic 8 Ball
#
# Commands:
#   hubot magic 8 ball me
#

module.exports = (robot) ->
  robot.respond /(magic )?8( )?ball( me)?/i, (msg) ->
    msg.reply msg.random [
      "ask again later",
      "yes",
      "my sources say no",
      "you many rely on it",
      "yes definitely",
      "very doubtful",
      "signs point to yes",
      "better not tell you now",
      "cannot predict now",
      "without a doubt",
      "my reply is no",
      "it is decidedly so",
      "it is certain",
      "concentrate and ask again",
      "don't count on it",
      "as I see it, yes",
      "most likely",
      "outlook good",
      "reply hazy, try again",
      "outlook not so good",
      "really bro?!"
    ]
