//  Created by Israel San Jose on 26/07/2015.

@import Foundation;

#import "lodash.h"

@interface NSObject (Utility)

/**
 Iteratee n times, returning an array of the results of each invocation.
 'Times' is invoked with one argument: n(number).
 
 Arguments
 ---
 n (integer): The number of times to invoke iteratee.
 block (Function): The function invoked per iteration.
 
 Returns
 ---
 (void):
 */
+ (void (^)(NSInteger,lodashIteratorIntegerBlock))_times;

/**
 Returns a random integer between 0 and max, inclusive.
 
 Arguments
 ---
 max (integer): The max random number possible.
 
 Returns
 ---
 (integer): Returns the random integer.
 */
+ (lodashReturnIntegerBlock)_random;

/**
 Returns a random integer between min and max, inclusive.
 If you only pass one argument, it will return a number between 0 and that number.
 
 Arguments
 ---
 min (integer): The min random number possible.
 max (integer): The max random number possible.
 
 Returns
 ---
 (integer): Returns the random integer.
 */
+ (lodashReturnRangeIntegerBlock)_range;

/**
 Generate a unique integer id (unique within the entire client session).
 Useful for temporary ids.
 If prefix is passed, the id will be appended to it.
 
 Arguments
 ---
 prefix (string): A prefix if we want to apply one.
 
 Returns
 ---
 (string): Returns the random unique id.
 */
+ (lodashReturnStringBlock)_uniqueId;

@end
