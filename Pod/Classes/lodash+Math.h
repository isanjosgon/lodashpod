//  Created by Israel San Jose on 07/08/2015.

@import Foundation;

#import "lodash.h"

@interface NSObject (Math)

/**
 Adds two numbers.
 
 Arguments
 ---
 a (number): The first number to add.
 b (number): The second number to add.
 
 Returns
 ---
 (number): Returns the sum.
 */
+ (lodashReturnMathArgsBlock)_add;

/**
 Calculates n rounded up to precision.
 
 Arguments
 ---
 n (number): The number to round up.
 
 Returns
 ---
 (number): Returns the rounded up number.
 */
+ (lodashReturnMathArgBlock)_ceil;

/**
 Calculates n rounded down to precision.
 
 Arguments
 ---
 n (number): The number to round down.
 
 Returns
 ---
 (number): Returns the rounded down number.
 */
+ (lodashReturnMathArgBlock)_floor;

/**
 Gets the maximum value of the values given.
 
 Arguments
 ---
 a (number): First number to compare.
 b (number): Second number to compare
 
 Returns
 (number): Returns the maximum value.
 */
+ (lodashReturnMathArgsBlock)_max;

/**
 Gets the minimum value of the values given.
 
 Arguments
 ---
 a (number): First number to compare.
 b (number): Second number to compare
 
 Returns
 (number): Returns the minimum value.
 */
+ (lodashReturnMathArgsBlock)_min;

/**
 Calculates n rounded to precision.
 
 Arguments
 ---
 n (number): The number to round.

 Returns
 ---
 (number): Returns the rounded number.
 */
+ (lodashReturnMathArgBlock)_round;

/**
 Computes the absolute value of the given number.
 
 Arguments
 ---
 n (number): The number to compute.
 
 Returns
 ---
 (number): Returns the absolute number.
 */
+ (lodashReturnMathArgBlock)_abs;

/**
 Computes a raised to the power b.
 
 Arguments
 ---
 a (number): The number to compute.
 b (number): Precision.
 
 Returns
 ---
 (number): Returns the powered number.
 */
+ (lodashReturnMathArgsBlock)_pow;

/**
 Calculates the square root function.
 
 Arguments
 ---
 n (number): The number to compute.
 
 Returns
 ---
 (number): Returns the calculated number.
 */
+ (lodashReturnMathArgBlock)_sqrt;

/**
 Gets the sum of the values in collection.
 
 Arguments
 ---
 collection (Array|Object|string): The collection to iterate over.
 
 Returns
 ---
 (number): Returns the sum.
 */
+ (lodashReturnMathIdBlock)_sum;

@end
