# Description:
#   Random quotes about bad programming languages
#
# Commands:

module.exports = (robot) ->
  robot.hear /\bjava\b/i, (msg) ->
    quotes = [
      "If 100 lines of Java code accomplish a task then it looks like you've written 100 lines, even though in a different language it might only take 5 lines. It's like... you can eat a 1 pound steak, or you can eat 100 pounds of shoe leather, and you feel a great sense of accomplishment after the shoe leather, but maybe there are some downsides. - Larry Wall"
      "Java is sort of the COBOL of the 21st century, I think. It's heavyweight, verbose, and everyone loves to hate it, though not everyone will admit that. - Larry Wall"
      "Using Java for serious jobs is like trying to take the skin off a rice pudding wearing boxing gloves. - Tel Hudson"
      "If Java had true garbage collection, most programs would delete themselves upon execution. - Robert Sewell"
    ]
    msg.send msg.random(quotes)

  robot.hear /\bcobol\b/i, (msg) ->
    quotes = [
      "The use of COBOL cripples the mind; its teaching should, therefore, be regarded as a criminal offense. - Edsger Dijkstra"
      "Cobol has almost no fervent enthusiasts. As a programming tool, it has roughly the sex appeal of a wrench. - Charles Petzold"
      "A computer without COBOL and FORTRAN is like a piece of chocolate cake without ketchup or mustard. - John Krueger"
    ]
    msg.send msg.random(quotes)
