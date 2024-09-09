/*:
## App Exercise - Fitness Tracker: Constant or Variable?
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 There are all sorts of things that a fitness tracking app needs to keep track of in order to display the right information to the user. Similar to the last exercise, declare either a constant or a variable for each of the following items, and assign each a sensible value. Be sure to use proper naming conventions.
 
- Name: The user's name
- Age: The user's age
- Number of steps taken today: The number of steps that a user has taken today
- Goal number of steps: The user's goal for number of steps to take each day
- Average heart rate: The user's average heart rate over the last 24 hours
 */
let username = "Flo"
print("The user's name \"\(username)\" is not likely to change and can probably be considered a constant over the lifecycle of a view")
var userAge = 35
print("The user's age, depending on the precision, changes every second")
var numberOfSteps = 12569
print("Similarly, the number of counted steps also increases with every step")
let stepsGoal = 10_000
print("The goal of \(stepsGoal) daily steps is probably a fixed one and can be changed somewhere in a configuration panel")
var averageHeartRate = 80.568
print("The average heart rate is also likely to change every second")
/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
 */
