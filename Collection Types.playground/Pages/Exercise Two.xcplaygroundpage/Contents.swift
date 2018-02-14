/*:
 [Previous](@previous)
 
 # Exercise Two
 
 A restaurant asks diners to rate their dining experience on a scale of 1 to 100, where 1 is "very bad", and 100 is "perfection".
 
 1. Create an empty mutable array of type `Double` named `restaurantRatings`:
 
 */

import Foundation
var restaurantRatings : [Double] = []

/*:
 2. Now populate the array with twenty random ratings between 1 and 100.
 */
for _ in 1...20 {
    restaurantRatings.append(Double(arc4random_uniform(UInt32(100))))
    
}



/*:
 3. Determine the average rating. Remember, calculate an average by finding the sum of all the values, then dividing by the number of values.
 */

var sum = 0
for rating in restaurantRatings {
    sum += Int(rating)
}
print(sum)

let average = sum/restaurantRatings.count
print(average)

/*:
 4. The restaurant is most concerned with how many diners considered their meal to be less than satisfactory. Calculate the percentage of diners who gave the restaurant a rating less than 80.
 */
var notLiked : Double = 0.0
for rating in restaurantRatings {
    if rating < 80 {
        notLiked += 1
    }
}

let percentNotLiked = (notLiked/Double(restaurantRatings.count)) * 100

print(percentNotLiked)
/*:
 5. The manager wants more detail. Prepare a report that indicates how many diners found the restuarant "Very Bad" (0 to 25), "Bad" (25 to 49), "Fair" (50 to 79), "Satisfactory" (80 to 89), and "Stellar" (90 to 100).
 */
var veryBad : Double = 0
var bad : Double = 0
var fair : Double = 0
var satisfactory : Double = 0
var stellar : Double = 0

for rating in restaurantRatings {
    if rating < 25 {
        veryBad += 1
    } else if rating >= 25 && rating < 50 {
        bad += 1
    } else if rating >= 50 && rating < 80 {
        fair += 1
    } else if rating >= 80 && rating < 90 {
        satisfactory += 1
    } else if rating >= 90 && rating <= 100 {
        stellar += 1
    }
}

print("The number of people that thought it was very bad was \(veryBad)")
print("The number of people that thought it was bad was \(bad)")
print("The number of people that thought it was fair was \(fair)")
print("The number of people that thought it was satisfactory was \(satisfactory)")
print("The number of people that thought it was stellar was \(stellar)")
