//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
var firstInt = 1
for i in 1...5{
    firstInt++
    print(firstInt)
}*/


// for case
/*for case let i in 1...100 where i % 3 == 0{
    print(i)
}*/



///////
/*var sheilds = 5
var blastersOverheating = false
var blastersFireCount = 0
var spaceDemonsDestroyed = 0
while sheilds > 0 {
    
    if spaceDemonsDestroyed > 200{
        print("you won the game")
        break
    }
    
    if blastersOverheating{
        print("blastersOverheating")
        sleep(5)
        print("blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blastersFireCount = 0
    }
    
    if blastersFireCount > 100 {
        blastersOverheating =  true
        continue
    }
    
    print("fire")
    ++blastersFireCount
    ++spaceDemonsDestroyed
}
*/


/* use a loop to count by 2 from 0 to 100 and make sure it runs 5 times
var total = 0
while total < 5{
    for case var i in 0...100 where i % 2 == 0 {
        print(i)
    }
    total++
}
*/




////////STRING////////
/*let testString = "Saleem"

for c in testString.characters{
    print(c)
}


let coolDue = "\u{1F60E}"
let aAcute = "\u{0061} \u{0301}"

for scalar in testString.unicodeScalars{
    print(scalar.value)
}

let fromStart = testString.startIndex
let toPosition = 3
let end = fromStart.advancedBy(toPosition)
let fourthCharacter = testString[end]
let range = fromStart...end
let first4 = testString[range]*/


/////Array//////

/*var bucketList = ["Test"]
bucketList.append("Test 2")
bucketList[1] += " 3"

print(bucketList)



var toDo = ["Take out the Garbage", "Pay bills", "cross off finished items"]

for var i = toDo.count; i>0; i-- {
    print(toDo[i-1])
}

//toDo = toDo.reverse()

//print(toDo)*/

///////////////DICTIONRY////////////////////
/*var dic1 : Dictionary <String, Double> = [:]
var dic2 = Dictionary <String, Double>()
var dic3 : [String : Double] = [:]
var dic4 = [String:Double]()

//Updating a Value

var movieRating = ["movie 1" : 3, "movie 2" : 5, "movie 3" : 4]
//let movie1Rating = movieRating["movie 1"]
movieRating["movie 3"] = 5

let oldRating = movieRating.updateValue(5, forKey: "movie 1")

if let lastRating = oldRating, currentRating = movieRating["movie 1"]{
    print("old rating \(lastRating) current rating \(currentRating)")
}

for (key, value) in movieRating{
    print(value)
}

for movie in movieRating.keys{
    print(movie)
}

// Dictionary to Array
let watchMovies = Array(movieRating.keys)

////////// Silver Challenge

let zipCodes = ["21043", "21044"]
let marylnad = ["Howard": zipCodes]
print(marylnad["Howard"]!)*/



//////////Chapter 11: Sets//////////////

// set is unordered 
// elements must be unique
// stores elements like array


/*var grocerryBag = Set<String>()
grocerryBag.insert("Apples")
grocerryBag.insert("Oranges")

for item in grocerryBag{
    print(item)
}

let grocerrybag2  = Set(["mango", "avocado"])
let grocerrybag3 : Set = ["mango", "avocado"]
*/





////////FUNCTIONS Chapter 12/////////////

func personalGreeting(name : String){
    print("hello \(name)")
}

personalGreeting("john")

func description(num: Double, den: Double){
    print(num, den)
}

description(9.0, den: 3.0)


func divisionDescription(forNumerator num: Double, andDenominator den: Double){
    
}

divisionDescription(forNumerator: 9, andDenominator: 2)

//Variadic paramter

func personalGreetings(names: String...){
    for name in names{
        print(name)
    }
}

personalGreetings("John", "Mat", "collin")


////Default Parameter////

func greetings(name: String, punctuation: String = "."){
    print("\(name)\(punctuation)")
}

greetings("saleem")
greetings("saleem", punctuation:"!")

////In-out Parameter////////

var error = "The request failed!"
func appendErrorCode(code: Int, inout toErrorString errorString: String){
    errorString += " bad request"
}
appendErrorCode(400, toErrorString: &error)

//Returning the function///
func sayHiBack(name: String) -> String{
    return "\(name) sangi"
}

print(sayHiBack("Saleem"))

//////Nested Fuctions//////

func areaOfTriangle(withBase base: Double, andHeight height: Double) -> Double{
    let numerator = base * height
    func divide() -> Double{
        return numerator / 2
    }
    
    return divide()
}

areaOfTriangle(withBase: 3.0, andHeight: 5.0)

//////////Multiple Reurns////////// OR Tuple//////

func sortEvenOdd(numbers : [Int]) -> (evens: [Int], odds: [Int]){
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers{
        if number % 2 == 0{
            evens.append(number)
        } else {
            odds.append(number)
        }
        
    }
    
    return (evens, odds)
}


