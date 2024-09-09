/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let collection: [Any] = ["Peter", 42, "Infinite Loop", 1, "Cupertino", "CA"]

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for element:Any in collection {
    if let someInt = element as? Int { print("The integer has a value of \(someInt)") }
    if let someString = element as? String { print("The string has a value of \(someString)") }
    if let someDouble = element as? Double { print("The double has a value of \(someDouble)") }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let someValues: [String:Any] = [
    "first": 1,
    "second" : 2.0,
    "third" : "Three",
    "fourth": false
]

for (key, value) in someValues {
    print ("\(key) \(value)")
}
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total = 0.0
for (key, value) in someValues {
    if let someInt = value as? Int { total += Double(someInt) }
    if let someDouble = value as? Double { total += someDouble }
    if let _ = value as? String { total += 1.0 }
    if let someBool = value as? Bool { total += (someBool == true) ? 2 : -3 }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2 = 0.0
for (key, value) in someValues {
    if let someInt = value as? Int { total2 += Double(someInt) }
    if let someDouble = value as? Double { total2 += someDouble }
    if let someString = value as? String {
        if let doubleValue = Double(someString) {
            total2 += doubleValue
        }
        if let intValue = Int(someString) {
            total2 += Double(intValue)
        }
    }
}
print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
