//: Playground - noun: a place where people can play

import Foundation

let myTuple = ("Question 1", false, false, true)

print(myTuple.0)
print(myTuple.3)

struct BaseballHittingStats {
  var atBats: Int
  var hits: Int
  var singles: Int
  var doubles: Int
  var triples: Int
  var homeRuns: Int
}

func averageAndSlugging(stats: BaseballHittingStats) -> (Double, Double) {
  return (Double(stats.hits)/Double(stats.atBats), Double(stats.singles + (2 * stats.doubles) + (3 * stats.triples) + (4 * stats.homeRuns))/Double(stats.atBats))
}

