# Description:
#   Decides where you should go
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot (remember|save|add) <place> as a <group> (location|place|spot)    - Remembers the location for the group
#   hubot (forget|delete|remove) <place> as a <group> (location|place|spot) - Forgets the location from the group
#   hubot (forget|delete|remove) all (location|place|spot)s for <group>     - Forgets all the locations for the group
#   hubot where can (I|we) go for <group>?                                  - Returns a list of places that exist for the group
#   hubot where should (I|we) go for <group>?                               - Returns a randomly selected location for the group
#
#   examples:
#
#   hubot add w?ch addiction as a lunch place
#   hubot remember chipotle as a lunch spot
#   hubot where should we go for lunch?
#
# Author:
#   lukesmith, updated by adamzaninovich

class Locations
  constructor: (@robot) ->
    @robot.brain.data.locations ?= {}

  add: (groupname, name) ->
    console.log "adding #{name} to #{groupname}"
    @robot.brain.data.locations[groupname] ?= []
    for location in @robot.brain.data.locations[groupname]
        if location.toLowerCase() is name.toLowerCase()
          return
    @robot.brain.data.locations[groupname].push name

  remove: (groupname, name) ->
    group = @robot.brain.data.locations[groupname] or []
    @robot.brain.data.locations[groupname] = (location for location in group when location.toLowerCase() isnt name.toLowerCase())

  removeAll: (groupname) ->
    delete @robot.brain.data.locations[groupname]

  group: (name) ->
    return @robot.brain.data.locations[name] or []

module.exports = (robot) ->
  locations = new Locations robot

  robot.respond /(remember|save|add) (.*) as a (.*) (location|place|spot)/i, (msg) ->
    locationname = msg.match[2]
    locationgroup = msg.match[3]
    locations.add locationgroup, locationname

  robot.respond /(forget|delete|remove) (.*) as a (.*) (location|place|spot)/i, (msg) ->
    locationname = msg.match[2]
    locationgroup = msg.match[3]
    locations.remove locationgroup, locationname

  robot.respond /(forget|delete|remove) all (location|place|spot)s for (.*)/i, (msg) ->
    locationgroup = msg.match[3]
    locations.removeAll locationgroup

  robot.respond /where can (we|I) go for (.*)\?$/i, (msg) ->
    locationgroup = msg.match[2]
    grouplocations = locations.group(locationgroup)
    if grouplocations.length > 0
      for location in grouplocations
        msg.send location
    else
      msg.send "I don't know anywhere to go for #{locationgroup}"

  robot.respond /where should (we|I) go for (.*)\?$/i, (msg) ->
    locationgroup = msg.match[2]
    grouplocations = locations.group(locationgroup)
    if grouplocations.length is 0
      msg.send "I dont know anywhere to go for #{locationgroup}"
    else
      location = msg.random grouplocations
      msg.send "I think you should go to #{location}"
