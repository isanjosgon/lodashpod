//  Created by Isra San Jose on 23/11/2015.

@import Foundation;

#import "lodash.h"

@interface NSArray (Array)

/**
 Flattens a nested array.
 
 Arguments
 ---
 array (Array): The array to flatten.

 Returns
 ---
 (Array): Returns the new flattened array.
 */
+ (NSArray *(^)(NSArray *))_flatten;

/**
 Creates an array of values by running each element in collection through iteratee. 
 The iteratee is bound to thisArg and invoked with three arguments: (value,index).
 
 Arguments
 ---
 array (Array): The collection to iterate over.
 block (Function): The function invoked per iteration.
 
 Returns
 ---
 (Array): Returns the new mapped array.
 */
+ (NSArray *(^)(NSArray *,lodashIteratorArrayBlock))_map;

/**
 Gets the index at which the first occurrence of value is found in array. 
 If fromIndex is negative, it’s used as the offset from the end of array.
 
 Arguments
 ---
 array (Array): The array to search.
 value (*): The value to search for.
 fromIndex (number): The index to search from.
 
 Returns
 ---
 (number): Returns the index of the matched value, else NSNotFound.
 */
+ (NSUInteger(^)(NSArray *,id,NSInteger))_indexOf;

/**
 Creates a slice of array from start up to end.
 
 Arguments
 ---
 array (Array): The array to slice.
 [start=0] (number): The start position.
 [end=array.length] (number): The end position.
 
 Returns
 ---
 (Array): Returns the slice of array.
 */
+ (NSArray *(^)(NSArray *,NSInteger,NSInteger))_slice;

/**
 Iterates over elements of array invoking iteratee for each element.
 The iteratee is invoked with two arguments: (value, index).
 Iteratee functions may exit iteration early by explicitly returning false.
 
 Arguments
 ---
 array (Array): The array to iterate over.
 
 Returns
 ---
 (*): 
 */
+ (void(^)(NSArray *,lodashIteratorBlock))_each;

/**
 Replace the value at a specific index.
 
 Arguments
 ---
 array (Array): The array to work with.
 value (id): value to insert.
 atIndex (number): index to replace the value;
 
 Returns
 ---
 (Array): replaced array.
 */
+ (NSArray *(^)(NSArray *,id,NSInteger))_replace;

/**
 Creates an array of unique array values not included in the other provided array.
 
 Arguments
 ---
 array (Array): The array to inspect.
 values (Array): The values to exclude.
 
 Returns
 ---
 (Array): Returns the new array of filtered values.
 */
+ (NSArray *(^)(NSArray *,NSArray *))_difference;

@end
