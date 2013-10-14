# Description:
#   Generate a dance party
#
# Commands:
#   hubot dance
#   hubot dance party
#

_ = require("underscore")

all_the_dances = [
  "http://i.imgur.com/nMwhe1J.gif"
  "http://i.imgur.com/gqjNqIt.gif"
  "http://i.imgur.com/U0eCpie.gif"
  "http://i.imgur.com/aNDPfN9.gif"
  "http://i.imgur.com/Mcl8II3.gif"
  "http://i.imgur.com/pmbXS1S.gif"
  "http://i.imgur.com/lgu0rFJ.gif"
  "http://i.imgur.com/ELVny49.gif"
  "http://i.imgur.com/QP8Wj3i.gif"
  "http://i.imgur.com/X4QmLRD.gif"
  "http://i.imgur.com/2m9Imll.gif"
  "http://i.imgur.com/wZFz3MG.gif"
  "http://i.imgur.com/hA66K2l.gif"
  "http://i.imgur.com/mcEoBIW.gif"
  "http://i.imgur.com/Wilkrho.gif"
  "http://i.imgur.com/QyufiwS.gif"
  "http://i.imgur.com/LgGXDYh.gif"
  "http://i.imgur.com/H9kxXsN.gif"
  "http://i.imgur.com/LtMIFEL.gif"
  "http://i.imgur.com/J73NDDA.gif"
  "http://i.imgur.com/2CZ2vCH.gif"
  "http://i.imgur.com/0NKbIe3.gif"
  "http://i.imgur.com/Spb6Jlj.gif"
  "http://i.imgur.com/9QziNcD.gif"
  "http://i.imgur.com/w3HZOyh.gif"
  "http://i.imgur.com/Rg63FGP.gif"
  "http://i.imgur.com/Wgbr5an.gif"
  "http://i.imgur.com/rTpeUhR.gif"
  "http://i.imgur.com/UZjLqpM.gif"
  "http://i.imgur.com/0RZJqvx.gif"
  "http://i.imgur.com/MC607mQ.gif"
  "http://i.imgur.com/5pjEvod.gif"
  "http://i.imgur.com/g9LjCba.gif"
  "http://i.imgur.com/4NX1NeS.gif"
  "http://i.imgur.com/oLM0byq.gif"
  "http://i.imgur.com/IIw0qtg.gif"
  "http://i.imgur.com/Okkaui8.gif"
]

module.exports = (robot) ->
  robot.respond /dance party( (\d+))?/i, (party) ->
    count = party.match[2] || 5
    dances = _.shuffle all_the_dances
    party.send dance for dance in dances[0...count-1]
  robot.respond /dance/i, (party) -> party.send party.random all_the_dances
