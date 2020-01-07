var welcomeMessage = "Hello, playground."

let goodbyeMessage = "See you soon!"

print(goodbyeMessage)


/* -----------------------------------
 ## 1. Booleans & Comparison
 ----------------------------------- */

/* Challeng 1.
 Create a constant named `myAge`
 and set its value to your age.

 create a constant named `isVotingAge`
    that uses Boolean logic
    to determine
        if the value stored in `myAge` denotes someone of voting age.
 In my part of the world, the voting age is 18, so I'll use that here.
 */

let myAge = 66
let isVotingAge = myAge >= 18


/*:
## Challenge 2
Create a constant named `student` and set its value to your name as a string.
Next, create a constant named `author` and set its value to `"Matt Galloway"`, the original author of these exercises.
Then, create a third constant named `authorIsStudent` that uses string equality to determine if the values of `student` and `author` are equal.
*/

let student = "Klaus"
let author = "Matt Galloway"
let authorIsStudent :Bool = student == author


/*:
## Challenge 3
Create a constant named `studentBeforeAuthor` which uses string comparison to determine if the string value in the constant `student` comes, alphabetically speaking, before the string value in the constant `author`.
The constants `student` and an `author` were declared above in Challenge 3, so you do not need to redeclare them here.
*/

let studentBeforeAuthor = student < author



let passingGrade = 50
let studentGrade = 50
let chrisGrade = 49
let samGrade = 99

let studentPassed = studentGrade >= passingGrade
let chrisPassed = chrisGrade >= passingGrade
let samPassed = samGrade >= passingGrade

!samPassed
!chrisPassed
chrisPassed == false





/* -----------------------------------
## 2. Logical Operators
----------------------------------- */
// 2-1. And Operator : &&
let catName = "Ozma"
let bothPassed = chrisPassed && samPassed
let everyonePassed = chrisPassed && samPassed && studentPassed

// 2-2. OR Operator : ||
let eitherPassed = chrisPassed || samPassed
let anyonePassed = chrisPassed || samPassed || studentPassed

let meritAwardGrade = 90
let samHasPerfectAttendance = true
let samIsMeritStudent = samHasPerfectAttendance && samGrade > meritAwardGrade

let chrisHasPerfectAttendance = true
let chrisIsMeritStudent = chrisHasPerfectAttendance && chrisGrade > meritAwardGrade


if chrisIsMeritStudent {
    print("Congratulation!")
} else {
    print("Keep studying.")
}

var betterStudent: String
if samGrade > chrisGrade {
    betterStudent = "Sam"
} else {
    betterStudent = "Chris"
}

// Ternary conditional operator
// expression ? true-value : false-value

betterStudent = samGrade > chrisGrade ? "Sam" : "Chris"



/*
 Challenge 1
 You've been provided with a a constant named myAge below that's already been assigned a value. Feel free to change the value of this constant to match your actual age.
 Use that constant to create an if-else statement
    to print out "Teenager" if the value of myAge is greater or  than 13 but less than or equal to 19, and to print out "Not a teenager" if the value is outside that range.
  */

if myAge > 13 && myAge <= 19 {
    print("Teenager")
} else {
    print("Not a Teenager")
}


/*
 Challenge 2
 Create a constant named teenagerName,
    and use a ternary conditional operator to set the value of teenagerName to your own name as a string if the value of myAge, declared above, is greater than or equal to 13, but less than or equal to 19, and to set the value of teenagerName to "Not me!" if the value is outside that range.
 Then print out the value of teenagerName.
 */

let teenagerName = myAge >= 13 && myAge <= 19 ? "Klaus" : "Not me!"
print(teenagerName)




/* -----------------------------------
## 2. Optional
 i. a wrapped value
 ii. nil(the absence of a value)
----------------------------------- */

var petName: String?
petName = "Mango"
print(petName)
petName = nil

var result: Int? = 30

petName = "Mango"
var petAge: Int? = 2

// unwrap optional
var unwrappedPetName = petName!
print("The pet's name is \(unwrappedPetName)")

// optional binding
//if petName !

var optionalInt: Int? = 10
var requiredResult = optionalInt ?? 0

//var optionalInt: Int? = nil
//var requiredResult = optionalInt ?? 0


/* Optional Challenge 1
 You've been provided with a constant below, hasAllergies, which has been set to true.
 Below that, declare a Optional String variable named dogName.
 On the next line, use a ternary conditional operator to set the value of dogName to nil if hasAllergies is true, and to "Mango" otherwise.
 */

let hasAllergies = true
var dogName: String?

dogName = hasAllergies ? nil :"Mango"


/* Challenge 2
Create a constant called parsedInt and set it to Int("10"). Swift will attempt to parse the string 10 and convert it to an Int.
Place your mouse over the constant name and use Option-Click to check the type of parsedInt. Why is parsedInt an optional here?
 : to be safe, Swift implicitly creates parsedInt as an optional
 */
let parsedInt = Int("10")




/* Challenge 3
Create another constant named newParsedInt and set it equal to Int("cat").
What will the value of `newParsedInt be? Why?
 : nil, type casted by Int, but inside brakets there`re not. Optional make this as a nil.
 */

let newParsedInt = Int("cat")
