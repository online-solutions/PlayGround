// Playground - noun: a place where people can play

import UIKit

// always fail on first time, I don't know why, maybe it's a bug
let string = "42"
if let number = string.toInt() {
    println("Got the number: \(number)")
} else {
    println("Couldn't convert to a number")
}
// prints "Got the number: 42"


var str = "Hello, playground"

var a = 12
var b = "7"
let bx:Int? = b.toInt()
var c = 5

if let variable:Int? = b.toInt(){
    println(variable! + a)
} else {
    println("error")
}

var d = a + b.toInt()!

var e = b.toInt()

var f = a + e!

println(b.toInt())

println(a + c)
println("some text")

var greeting:String? = "Hello World"
greeting = nil
if let message = greeting {
    println(message)
} else {
    println("No Greeting Available")
}

var result = "result = " + b

var myArray = [String]()
myArray.append("sdfff")
myArray.append("bbb")
myArray[0]
myArray[1]

myArray += ["ccc"]
myArray.append("ddd")



var emptArray = [String]()//khai bao mang rong
var emptyArray = Array<Int>()

var arr2 = Array<String>()
arr2.count

arr2.append("1eee")
arr2.append("2eee")
arr2.append("3eee")
arr2.append("4eee")
arr2.append("5eee")
arr2.append("6eee")
arr2.endIndex
arr2.count

arr2[2] < arr2[3]


arr2[3...4] = []

arr2[0] = "fff"
arr2
arr2.insert("ggg", atIndex: 2)
arr2.removeAtIndex(0)
arr2
arr2.reverse()
//arr2.reserveCapacity(10)
arr2.capacity

arr2.sort{$0 < $1}
arr2
arr2.reverse()


var array = [3, 2, 5, 1, 4]
//array.sort { $0 < $1 }
array
array.sorted { $0 < $1 }
array

var arr3 = [3, 2, 5, 1, 4 ,5,7,3,2,4,5,2,12]
var arr4 = arr3.filter {$0 % 2 == 0}

let arrayr = [0, 1, 2, 3, 4, 5, 6, 7]
let filteredArray = arrayr.filter { $0 % 2 == 0 }
filteredArray

var x = 10

var arr5 = filteredArray.map{$0 * 3}
arr5

var newArray = [1,2,3,4]

var arr6 = newArray.reduce(0){$0 + $1}
arr6
arr6 = newArray.reduce(2){$0 + $1}
arr6


arr6 = newArray.reduce(3){$0 * $1}
arr6

println("------------------------")

var dict = [String: Int]()

dict = ["one":1, "two": 2, "next": 3, "four": 4]
var val = dict["some string"]
if var value = dict["two"]{
    println("some string")
    value
} else {
    println("in else")
}

if var value2 = dict["twooo"]{
    println("some string")
    value2
} else {
    println("in else")
}

dict["two"] = nil
dict

dict.updateValue(2015, forKey: "four")
dict

if let unwrappedPreviousValue = dict.updateValue(2016, forKey: "four"){
    println("Replaced previous value = \(unwrappedPreviousValue)")
} else {
    println("key not found, can not update")
}

if let unwrappedPreviousValue2 = dict.updateValue(2016, forKey: "fourrrrr"){
    println("Replaced previous value = \(unwrappedPreviousValue2)")
} else {
    println("key not found, can not update")
}




struct MyStruct: Comparable {
    var name = "Untitled"
}
func ==(lhs: MyStruct, rhs: MyStruct) -> Bool {
    return lhs.name == rhs.name
}

func <(lhs: MyStruct, rhs: MyStruct) -> Bool {
    return lhs.name < rhs.name
}

let value1 = MyStruct()
var value2 = MyStruct()
let firstCheck = value1 == value2
// firstCheck is true

value2.name = "A New Name"
let secondCheck = value1 == value2
// secondCheck is false

let thirdCheck = value1 < value2

value2.name = "ZA New Name"

let fourCheck = value1 < value2



struct MyType: Printable {
    var name = "Untitled"
    var description: String {
        return "MyType: \(name)"
    }
}

let value = MyType()
println("Created a \(value)")
// prints "Created a MyType: Untitled"



var myInt:Int?

var yourInt = myInt

myInt = nil

// break here
//myInt!


var myView:UIView = UIView()
myView.frame = CGRectMake(0, 0, 320, 568)
myView.backgroundColor = UIColor.blueColor()


var dictionary: Dictionary = [
    "Primes":[1,3,6,2,3,11],
    "Squares":[3,5,7,2,2]
]

func greet (name:String) -> String{
    return "Hello \(name)"
}


println(greet("Lite"))

var backgroundDict:Dictionary<String, String> = Dictionary()
backgroundDict = ["Background1":"background1.png", "Background2":"background2"]
var backgroundImage:UIImage? = UIImage(named: backgroundDict["Background1"]!)

let width:CGFloat = 320
let height:CGFloat = 568
var view:UIView = UIView(frame: CGRectMake(0, 0, width, height));
var imageView:UIImageView = UIImageView()
imageView = UIImageView(frame: view.frame);

imageView.image = backgroundImage;


var v = UIView(frame: CGRectMake(0, 0, 200, 200))

var btn = UIButton(frame: CGRectMake(0, 0, 100, 32))

btn.setTitle("MyButton", forState: UIControlState.Normal)
btn.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)

v.addSubview(btn)

v


// closures

import Foundation

let names = ["Kenny", "Chris", "Lucy", "Adam"]

func alphabetic(s1: String, s2: String) -> Bool{
    return s1 > s2
}

sorted(names, alphabetic)

sorted(names, { (s1: String, s2: String) -> Bool in return s1 < s2 })

sorted(names, {s1, s2 -> Bool in return s1 < s2 })

sorted(names, {s1, s2 in s1 < s2 })

sorted(names) {$0 < $1}







