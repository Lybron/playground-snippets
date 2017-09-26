//: Playground - noun: a place where people can play

import Foundation

struct TeamRecord {
  var wins: Int
  var losses: Int
}

func + (left: TeamRecord, right: TeamRecord) -> TeamRecord {
  return TeamRecord(wins: left.wins + right.wins, losses: left.losses + right.losses)
}

let record_2013 = TeamRecord(wins: 4, losses: 2)
let record_2014 = TeamRecord(wins: 6, losses: 3)

let rec_13_14 = record_2013 + record_2014
