import UIKit

///weight in lbs, high in meters. eg. weight = 150, height = 1.75
func BMICalculator(weight: Float, height: Float) -> Float{
    return weight / pow(height,2)
}

var bmi = BMICalculator(weight: 150, height:1.75)

print("Hello master, here's your BMI \(bmi)")

