//: Playground - noun: a place where people can play

import Foundation

var bids = [48, 75, 63, 52, 68]

var orderedBids = bids.sorted(by: { (bid1: Int, bid2: Int) -> Bool in
  return bid2 > bid1
})

let bidsAsStrings = bids.map({(bid: Int) -> String in
  return String(bid)
})

let bidString = bids.map({
  return String($0)
})

var birthYears = [2004, 2011, 2007, 2005, 2002]
var reverse = birthYears.sorted(by: { (year1: Int, year2: Int) -> Bool in
  return year1 > year2
})

var soup = ["tomato", "hot and sour", "french onion", "vegetable"]
var alphaSoup = soup.sorted(by: { (soup1: String, soup2: String) -> Bool in
  return soup2 > soup1
})

var alphaSou2 = soup.sort(by: { $1 > $0 })

var examGrades = [81, 99, 54, 84, 98]
var passingGrades = examGrades.filter({ (grade: Int) -> Bool in
  return grade > 70
})

var failingGrades = examGrades.filter({ grade in
  return grade < 70
})

var moreGrades = examGrades.filter({ grade in
  grade > 70
})

var myGrades = examGrades.filter({
  $0 > 70
})

let tripContributions = ["Andy": 25, "Kathleen": 45, "Janhavi": 50, "Sebastian": 10, "Chrisna": 50]
let averageTripCost = (25 + 50 + 45 + 10 + 50)/5

let tripDebts = tripContributions.map({ (key, value) -> String in
  let amountOwed = averageTripCost - value
  if amountOwed > 0 {
    return "\(key) owes $\(amountOwed)"
  } else {
    return "\(key) is owed $\(-amountOwed)"
  }
})

let tripContributionsArray = Array(tripContributions.values)

let totalTripCost = tripContributionsArray.reduce(0, { (subtotal, contribution) -> Int in
  subtotal + contribution
})

let tripCost = tripContributionsArray.reduce(0, {
  $0 + $1
})

let cost2 = tripContributionsArray.reduce(0) {
  $0 + $1
}

let numbers = [7, 89, 48, 20, 38, 89, 29]
let highestNumber = numbers.reduce(0) { (currentMax, number) -> Int in
  return max(currentMax, number)
}

let maxNumber = numbers.reduce(0) {
  max($0, $1)
}
