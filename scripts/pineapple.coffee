# Description:
#   Pineapple! PINEAPPLE!
#
# Commands:

module.exports = (robot) ->
  robot.hear /pineapple (.+)/i, (msg) ->
    msg.send "Pineapple #{msg.match[1]}, PINEAPPLE!"
    msg.send "pineapple means shut the fuck up!"
    msg.send msg.random [
      "http://s.quickmeme.com/img/e3/e323d07708b52965621f587d9e80dcff6ae51bedc02096eaee415fa3eb9e237b.jpg"
      "http://misseytwisted.files.wordpress.com/2013/09/3qdjjp.jpg"
      "http://www.feastsoffury.com/wp-content/uploads/2013/10/skyler-shut-up.gif"
      "https://quizzicalllama.files.wordpress.com/2013/10/76081-adam-sandler-haha-shut-up-gif-mh2n.gif"
      "http://cdn.memegenerator.net/instances/500x/44569345.jpg"
    ]

