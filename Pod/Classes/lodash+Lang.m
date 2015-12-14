//  Created by Israel San Jose on 27/07/2015.

#import "lodash+Lang.h"

@implementation NSObject (Lang)

+ (lodashReturnBoolBlock)_isArray
{
    return ^BOOL (id obj) {
        return [obj isKindOfClass:[NSArray class]];
    };
}

+ (lodashReturnBoolBlock)_isNumber
{
    return ^BOOL (id obj) {
        return [obj isKindOfClass:[NSNumber class]];
    };
}

+ (lodashReturnBoolBlock)_isString
{
    return ^BOOL (id obj) {
        return [obj isKindOfClass:[NSString class]];
    };
}

+ (lodashReturnBoolBlock)_isNull
{
    return ^BOOL (id obj) {
        return [obj isKindOfClass:[NSNull class]];
    };
}

+ (lodashReturnBoolBlock)_isDictionary
{
    return ^BOOL(id obj) {
        return [obj isKindOfClass:[NSDictionary class]];
    };
}

+ (lodashReturnBoolBlock)_isData
{
    return ^BOOL(id obj) {
        return [obj isKindOfClass:[NSData class]];
    };
}

+ (lodashReturnBoolBlock)_isSet
{
    return ^BOOL(id obj) {
        return [obj isKindOfClass:[NSSet class]];
    };
}

+ (lodashReturnBoolBlock)_isDate
{
    return ^BOOL(id obj) {
        return [obj isKindOfClass:[NSDate class]];
    };
}

+ (lodashReturnBoolBlock)_isEmpty
{
    return ^BOOL(id obj) {
        if ([obj respondsToSelector:@selector(length)]) {
            return [obj length] == 0;
        }
        if ([obj respondsToSelector:@selector(count)]) {
            return [obj count] == 0;
        }
        
        NSParameterAssert(@"The object does not respond to 'count' or 'length'");
        return NO;
    };
}

+ (lodashReturnEqualBoolBlock)_isEqual
{
    return ^BOOL(id a,id b) {
        if (NSObject.isArray(a) && NSObject.isArray(b)) {
            return [a isEqualToArray:b];
        } else if (NSObject.isString(a) && NSObject.isString(b)) {
            return [a isEqualToString:b];
        } else if (NSObject.isDictionary(a) && NSObject.isDictionary(b)) {
            return [a isEqualToDictionary:b];
        } else if (NSObject.isDate(a) && NSObject.isDate(b)) {
            return [a isEqualToDate:b];
        } else if (NSObject.isData(a) && NSObject.isData(b)) {
            return [a isEqualToData:b];
        } else if (NSObject.isSet(a) && NSObject.isSet(b)) {
            return [a isEqualToSet:b];
        } else if (NSObject.isNumber(a) && NSObject.isNumber(b)) {
            return [a isEqualToNumber:b];
        }
        
        NSParameterAssert(@"The objects can not be compared");
        return NO;
    };
}

+ (lodashReturnArrayBlock)_toArray
{
    return ^NSArray *(NSSet *list) {
        NSParameterAssert(NSObject.isSet(list));
        return [NSArray arrayWithArray:list.allObjects];
    };
}

+ (lodashReturnCompareBoolBlock)_gt
{
    return ^BOOL(NSInteger a,NSInteger b) {
        return a > b;
    };
}

+ (lodashReturnCompareBoolBlock)_gte
{
    return ^BOOL(NSInteger a,NSInteger b) {
        return a >= b;
    };
}

+ (lodashReturnCompareBoolBlock)_lt
{
    return ^BOOL(NSInteger a,NSInteger b) {
        return a < b;
    };
}

+ (lodashReturnCompareBoolBlock)_lte
{
    return ^BOOL(NSInteger a,NSInteger b) {
        return a <= b;
    };
}

@end
