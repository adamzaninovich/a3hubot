# Description:
#   This is not vim
#
# Commands:

module.exports = (robot) ->
  robot.hear /:w/, (msg) ->
    lines = msg.random [1..100]
    characters = lines + msg.random [0..5000]
    msg.send "\"hubot.vim\" #{lines}L, #{characters}C written"
