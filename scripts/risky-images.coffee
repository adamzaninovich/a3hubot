# Description:
#   Find out how risky an image query may be
#
# Commands:
#   hubot assess risk for <query> - takes an image query and returns a risk score
#   hubot risk leaderboard - returs the top 10 most risky querys

_ = require 'underscore'

class AssessmentStorage
  constructor: (@robot) ->
    @robot.brain.data.assessments ?= {}

  put: (query, score, user) ->
    if typeof @get(query) is "undefined"
      @robot.brain.data.assessments[query] = score: score, user: user

  delete: (query) ->
    delete @robot.brain.data.assessments[query]

  get: (query) -> @robot.brain.data.assessments[query]

  user: (user) ->
    # return scores for a user

  leaderboard: (callback) ->
    mapped = _.map @robot.brain.data.assessments, (result, query) ->
      result.query = query
      result
    sorted = _.sortBy mapped, (result) -> -result.score
    sorted[0..9]

  #downcase: ->
    #_.each @robot.brain.data.assessments, (result, query) ->
      #delete @robot.brain.data.assessments[query]
      #@robot.brain.data.assessments[query.toLowerCase()] = result

class ImageRiskAssessor
  constructor: (@msg, @cache, @quiet=false) ->

  assess: (query) ->
    query = query.toLowerCase()
    if typeof(@cache.get query) is "undefined"
      @msg.send "Hold on, I have to calculate an ira score for \"#{query}\"..." unless @quiet
      @query = query
      @make_request @format_query(query), (clean_results) =>
        @make_request @format_query(query, 'off'), (dirty_results) =>
          @calculate_risk clean_results, dirty_results
    else
      @display_score query, @cache.get(query).score unless @quiet

  calculate_risk: (clean, dirty) =>
    score = (_.difference clean, dirty).length
    if score is 0
      @msg.send "Sorry, Google is being a little bitch right now and limiting my queries. Hold off for a sec."
    else
      @cache.put @query, score, @msg.message.user
      @display_score @query, score unless @quiet

  display_score: (query, score) -> @msg.send "\"#{query}\" has an ira score of #{score}."
  format_query: (query, safe='active') -> { v: '1.0', rsz: '8', q: query, safe: safe }
  format_results: (results) -> _.map(results, (image) -> image.unescapedUrl)

  make_request: (query, callback, previous_results=[]) =>
    @msg.http('http://ajax.googleapis.com/ajax/services/search/images').query(query).get() (err, res, body) =>
      results = _.union(previous_results, @format_results(JSON.parse(body).responseData?.results or []))
      query.start or= '0'
      query.start = "#{parseInt(query.start) + 8}"
      if parseInt(query.start) < 50
        @make_request query, callback, results
      else
        callback results

module.exports = (robot) ->
  robot.ImageAssessmentStorage = new AssessmentStorage robot

  robot.respond /assess( me)? (.*)/i, (msg) ->
    assessor = new ImageRiskAssessor msg, robot.ImageAssessmentStorage
    assessor.assess msg.match[2]

  robot.respond /(show)?( the)? ?(leaderboard)s?/i, (msg) ->
    msg.send "=== Risk Assessment Leaderboard ==="
    leaderboard = _.map robot.ImageAssessmentStorage.leaderboard(), (result, place) ->
      "#{place+1}. #{result.score} - \"#{result.query}\" - #{result.user.name}"
    msg.send.apply this, leaderboard

  robot.on "assess", (msg, query) ->
    assessor = new ImageRiskAssessor msg, robot.ImageAssessmentStorage, true
    assessor.assess query

  #robot.respond 'dc assess', (msg) ->
    #robot.ImageAssessmentStorage.downcase()

  #robot.respond /unassess( me)? (.*)/i, (msg) ->
  #  robot.ImageAssessmentStorage.delete msg.match[2]
  #  msg.send "Removed #{msg.match[2]} from by brain"

