let grade = 85
let letterGrade: String 

if grade >= 90 {
  letterGrade = "A"
} else if grade >= 80 {
  letterGrade = "B"
} else if grade >= 70 {
  letterGrade = "C"
} else if grade >= 60 {
  letterGrade = "D"
} else if grade < 60 {
  letterGrade = "F"
} else {
  letterGrade = "N/A"
}

print(letterGrade) 
// Prints: B
