//  Created by Isra San Jose on 23/11/2015.

#import "lodash+Array.h"

@implementation NSArray (Array)

+ (NSArray *(^)(NSArray *array))_flatten
{
    return ^NSArray *(NSArray *array) {
        return [self baseFlattenWithArray:array result:[NSMutableArray new]];
    };
}

/**
 The base implementation of '_.flatten'.
 
 @private
 @param {Array} array The array to flatten.
 @param {Array} [result=[]] The initial result value.
 @returns {Array} Returns the new flattened array.
 */
+ (NSArray *)baseFlattenWithArray:(NSArray *)array result:(NSMutableArray *)result
{
    NSInteger index = -1;
    while (++index < array.count) {
        id obj = array[index];
        if (NSObject.isArray(obj)) {
            [self baseFlattenWithArray:obj result:result];
            break;
        } else if (NSObject.isSet(obj)) {
            [self baseFlattenWithArray:[obj allObjects] result:result];
        } else {
            [result addObject:obj];
        }
    }
    return result;
}

+ (NSArray *(^)(NSArray *array,lodashIteratorArrayBlock block))_map
{
    return ^NSArray *(NSArray *array,lodashIteratorArrayBlock block) {
        NSParameterAssert(array.count > 0);
        NSMutableArray *final = [NSMutableArray new];
        for (NSInteger iterator = 0; iterator < array.count; iterator++) {
            id obj = block(array[iterator],iterator);
            if (obj) {
                [final addObject:obj];
            }
        }
        return final;
    };
}

+ (NSUInteger(^)(NSArray *,id,NSInteger))_indexOf
{
    return ^NSUInteger(NSArray *array,id value,NSInteger fromIndex) {
        NSParameterAssert(array.count > 0);
        NSParameterAssert(value);
        NSArray *final = [self baseToArray:array];
        if (fromIndex > 0) {
            final = NSArray.slice(final,fromIndex,final.count);
        } else if (fromIndex < 0) {
            final = NSArray.slice(final,final.count - fromIndex,final.count);
        }
        return [final indexOfObject:value];
    };
}

+ (NSArray *(^)(NSArray *,NSInteger,NSInteger))_slice
{
    return ^NSArray *(NSArray *array,NSInteger start,NSInteger end) {
        NSParameterAssert(end > start);
        NSArray *final = [self baseToArray:array];
        return [final subarrayWithRange: NSMakeRange(start,end)];
    };
}

+ (void(^)(NSArray *,lodashIteratorBlock))_each
{
    return ^(NSArray *array,lodashIteratorBlock block) {
        NSArray *final = [self baseToArray:array];
        for (NSInteger iterator = 0; iterator < final.count; iterator++) {
            block(final[iterator],iterator);
        }
    };
}

+ (NSArray *(^)(NSArray *,id,NSInteger))_replace
{
    return ^NSArray *(NSArray *array,id value,NSInteger atIndex) {
        NSParameterAssert(atIndex < array.count);
        NSMutableArray *final = [self baseToArray:array];
        [final replaceObjectAtIndex:atIndex withObject:value];
        return final;
    };
}

+ (NSArray *(^)(NSArray *,NSArray *))_difference
{
    return ^NSArray * (NSArray *array,NSArray *values) {
        NSParameterAssert(values);
        NSParameterAssert(NSObject.isArray(values));
        NSMutableArray *final = [self baseToArray:array];
        [final removeObjectsInArray:values];
        return final;
    };
}

#pragma mark - Helpers
/**
 Converts 'array' to a array if it's not one.
 An exception is returned for 'null' or 'undefined' values.
 
 @private
 @param {*} array The value to process.
 @returns {array} Returns the processed array.
 */
+ (NSMutableArray *)baseToArray:(NSArray *)array
{
    NSParameterAssert(array);
    NSParameterAssert(NSObject.isArray(array));
    return [[NSMutableArray alloc] initWithArray:array];
}

@end
