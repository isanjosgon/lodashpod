//  Created by Israel San Jose on 27/07/2015.

@import Foundation;

#import "lodash.h"

@interface NSObject (Lang)

/**
 Checks if value is classified as an Array object.
 
 Arguments
 ---
 value (*): The value to check.
 
 Returns
 ---
 (boolean): Returns true if value is correctly classified, else false.
 */
+ (lodashReturnBoolBlock)_isArray;

/**
 Checks if value is classified as a Number primitive or object.
 
 Arguments
 ---
 value (*): The value to check.
 
 Returns
 ---
 (boolean): Returns true if value is correctly classified, else false.
 */
+ (lodashReturnBoolBlock)_isNumber;

/**
 Checks if value is classified as a String primitive or object.
 
 Arguments
 ---
 value (*): The value to check.
 
 Returns
 ---
 (boolean): Returns true if value is correctly classified, else false.
 */
+ (lodashReturnBoolBlock)_isString;

/**
 Checks if value is null.
 
 Arguments
 ---
 value (*): The value to check.
 
 Returns
 ---
 (boolean): Returns true if value is null, else false.
 */
+ (lodashReturnBoolBlock)_isNull;

/**
 Checks if value is classified as a Dictionary primitive or object.
 
 Arguments
 ---
 value (*): The value to check.
 
 Returns
 ---
 (boolean): Returns true if value is correctly classified, else false.
 */
+ (lodashReturnBoolBlock)_isDictionary;

/**
 Checks if value is classified as a Date primitive or object.
 
 Arguments
 ---
 value (*): The value to check.
 
 Returns
 ---
 (boolean): Returns true if value is correctly classified, else false.
 */
+ (lodashReturnBoolBlock)_isDate;

/**
 Checks if value is classified as a Data primitive or object.
 
 Arguments
 ---
 value (*): The value to check.
 
 Returns
 ---
 (boolean): Returns true if value is correctly classified, else false.
 */
+ (lodashReturnBoolBlock)_isData;

/**
 Checks if value is classified as a Set primitive or object.
 
 Arguments
 ---
 value (*): The value to check.
 
 Returns
 ---
 (boolean): Returns true if value is correctly classified, else false.
 */
+ (lodashReturnBoolBlock)_isSet;

/**
 Checks if value is null.
 
 Arguments
 ---
 value (*): The value to check.
 
 Returns
 ---
 (boolean): Returns true if value is null, else false.
 */
+ (lodashReturnBoolBlock)_isEmpty;

/**
 Performs a deep comparison between two values to determine if they are equivalent.
 If customizer is provided it is invoked to compare values.
 If customizer returns undefined comparisons are handled by the method instead.
 The customizer is bound to thisArg and invoked with three arguments: (value, other [, index|key]).
 
 Note: This method supports comparing arrays, booleans, Date objects, numbers, Object objects, regexes, and strings.
 Objects are compared by their own, not inherited, enumerable properties.
 
 Arguments
 ---
 a (*): The value to compare.
 b (*): The other value to compare.
 
 Returns
 ---
 (boolean): Returns true if the values are equivalent, else false.
 */
+ (lodashReturnEqualBoolBlock)_isEqual;

/**
 Converts value to an array.
 
 Arguments
 ---
 value (id): The NSSet to convert.
 
 Returns
 ---
 (NSArray): Returns the converted array.
 */
+ (lodashReturnArrayBlock)_toArray;

/**
 Checks if value is greater than other.
 
 Arguments
 ---
 a (NSInteger): The value to compare.
 b (NSInteger): The other value to compare.
 
 Returns
 ---
 (boolean): Returns true if value is greater than other, else false.
 */
+ (lodashReturnCompareBoolBlock)_gt;

/**
 Checks if value is greater than or equal other.
 
 Arguments
 ---
 a (NSInteger): The value to compare.
 b (NSInteger): The other value to compare.
 
 Returns
 ---
 (boolean): Returns true if value is greater than or equal other, else false.
 */
+ (lodashReturnCompareBoolBlock)_gte;

/**
 Checks if value is less than other.
 
 Arguments
 ---
 a (NSInteger): The value to compare.
 b (NSInteger): The other value to compare.
 
 Returns
 ---
 (boolean): Returns true if value is less than other, else false.
 */
+ (lodashReturnCompareBoolBlock)_lt;

/**
 Checks if value is less than or equal other.
 
 Arguments
 ---
 a (NSInteger): The value to compare.
 b (NSInteger): The other value to compare.
 
 Returns
 ---
 (boolean): Returns true if value is less than or equal other, else false.
 */
+ (lodashReturnCompareBoolBlock)_lte;

@end
