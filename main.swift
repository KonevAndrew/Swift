import Foundation

//в примере ниже используется опциональное выражениеи проверка на равенство two значению Nil

// var one = 10
// var two: Int? = 10

// // var three = one + two!
// // print(three)

// if let example = two {
//   print(one + example)
// } else {
//   print("Nil")
// }

// var data: String? 
// var error: String? = "h"

// if let errorMessage = error {
//   print("ошибка получения")
// } else {
//   print("Ошибок нет")
//     if let dataMessage = data {
//     print("Данные получены")
//   } else {
//     print("Данные не полученны")
//   }
// }

// class Human {
//   var name = "Andrew"
//   var secondName = "Konev"
//   var married = true
//   var age: Int? = 32

//   func aboutMe() -> String {
//     if let humanAge = age {
//       return "Hello, my name \(name), my secondname \(secondName) and my age \(humanAge)"
//     } else {
//       return "Hello, my name \(name), my secondname \(secondName)"
//     }
//   }
// }
// // human.aboutMe()

// let humanTwo = Human()
// print(humanTwo.aboutMe())


class MobilePhone {
  let title: String
  var price: Int?
  func getPrice() -> String {
    if let price = price {
        return ("Total price \(title) \(price) $")
    } else {
      return("\(title) mobile phone have not price")
    }
  }
  init(title: String, price: Int?) {
    self.title = title
    self.price = price
  }
}

class Phone: MobilePhone {
  var camera: Bool
  var nfc: Bool

  init(title: String, price: Int?, camera: Bool, nfc: Bool) {
    self.camera = camera
    self.nfc = nfc
    super.init(title: title, price: price)
  }
  override func getPrice() -> String {
    let originalText = super.getPrice()   
      return originalText + (self.camera ? " камера: есть" : " камера: нет") + (self.nfc ? " nfc: есть" : " nfc: нет")
  }

}
var iphone2 = Phone(title: "Iphone2", price: 100, camera: true, nfc: false)
var iphone11 = Phone(title: "Iphone", price: 1000, camera: true, nfc: true)
var samsung = Phone(title: "Samsung", price: 100, camera: true, nfc: true)
var nokia = Phone(title: "Nokia", price: 10, camera: false, nfc: false)
var siemens = Phone(title: "Siemens", price: 22, camera: false, nfc: false)
var sony = Phone(title: "Sony", price: 200, camera: false, nfc: false)
var motorolla = Phone(title: "Motorolla", price: 43, camera: false, nfc: false)
var huawei = Phone(title: "Huawei", price: 500, camera: true, nfc: true)
var muezza = Phone(title: "Muezza", price: 233, camera: true, nfc: true)
var dexp = Phone(title: "Dexp", price: nil, camera: false, nfc: false)
var honor = Phone(title: "Honor", price: 330, camera: true, nfc: true)

var array = [iphone2, iphone11, samsung,nokia,siemens,sony,motorolla,huawei,muezza,dexp, honor]

for index in array {
  print(index.getPrice())
}

class Rectangular {
  let height: Int
  let widht: Int
  let depth: Int
var volume: Int {
  return height * widht * depth
}
  
  init(height: Int, widht: Int, depth: Int) {
    self.height = height
    self.widht = widht
    self.depth = depth
  }
}

let rect = Rectangular(height: 12, widht: 22, depth: 12)
print(rect.volume)

class Person {
  var name: String
  var secondName: String
  var fullName: String {
    get {
      return name + " " + secondName
    }
    set(anotherNewValue) {
      let array = anotherNewValue.components(separatedBy: " ")
      name = array[0]
      secondName = array[1]
    }
  }
  init(name: String, secondName: String) {
    self.name = name
    self.secondName = secondName
  }
}
let me = Person(name: "Andrew", secondName: "Konev")
let cK = Person(name: "Sergio", secondName: "Lukichev")

print(me.fullName)
print(cK.fullName)
me.fullName = "Mark Konev"

print(me.fullName)


class Car {
  let product: Int
  let people: Int
  let pet: Int
  let selfWeight = 1500
  let maxWeight = 2000

  var totalWeight: Int {
    return product + people + pet + selfWeight
  }
  init(product: Int, people: Int, pet: Int) {
    self.product = product
    self.people = people
    self.pet = pet
  }
}

let car = Car(product: 100, people:300, pet:50)