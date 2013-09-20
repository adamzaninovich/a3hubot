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

  get: (query) -> @robot.brain.data.assessments[query]

  user: (user) ->
    # return scores for a user

  leaderboard: () ->
    # return scored for all users

class ImageRiskAssessor
  constructor: (@msg, @cache) ->

  assess: (query) ->
    if typeof(@cache.get query) is "undefined"
      @msg.send "Hold on, I have to calculate an ira score for \"#{query}\"..."
      @query = query
      @make_request @format_query(query), (clean_results) =>
        @make_request @format_query(query, 'off'), (dirty_results) =>
          @calculate_risk clean_results, dirty_results
    else
      @display_score query, @cache.get(query).score

  calculate_risk: (clean, dirty) =>
    score = (_.difference clean, dirty).length
    @cache.put @query, score, @msg.message.user
    @display_score @query, score

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

