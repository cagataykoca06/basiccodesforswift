import Foundation

let testScores = [88, 93, 75, 100, 80, 67, 71, 92, 90, 83]

func maximumValue<T: Comparable>(in arr: [T]) -> T? {
  guard !arr.isEmpty else {
    return nil
  }
  var max = arr[0]
  for value in arr where value > max {
    max = value
  }
  return max
}

if let topScore = maximumValue(in:testScores) {
  print("The top score is \(topScore)")
} else {
  print("No top score")
}