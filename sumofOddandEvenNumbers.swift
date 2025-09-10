var list = [2, 4, 3, 6, 1, 9]

var totalEven = 0

var productOdd = 1

for item in list {
  if item % 2 == 0 {
    totalEven += item
  } else {
    productOdd *= item
  }
}

print("Sum of even is \(totalEven)")
print("Product of odd is \(productOdd)")
