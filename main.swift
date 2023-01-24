//в примере ниже используется опциональное выражениеи проверка на равенство two значению Nil

var one = 10
var two: Int? = 10

// var three = one + two!
// print(three)

if let example = two {
  print(one + example)
} else {
  print("Nil")
}