//  Created by Israel San Jose on 26/07/2015.

#import "lodash+Methods.h"

#import "lodash+Utility.h"
#import "lodash+Lang.h"
#import "lodash+String.h"
#import "lodash+Math.h"
#import "lodash+Array.h"

@implementation NSObject (Methods)

#pragma mark - Array shortcuts
+ (NSArray *(^)(NSArray *array))flatten
{
    return ^NSArray *(NSArray *array) {
        return NSArray._flatten(array);
    };
}

+ (NSArray *(^)(NSArray *array,lodashIteratorArrayBlock block))map
{
    return ^NSArray *(NSArray *array,lodashIteratorArrayBlock block) {
        return NSArray._map(array,block);
    };
}

+ (NSUInteger(^)(NSArray *,id,NSInteger))indexOf
{
    return ^NSUInteger(NSArray *array,id value,NSInteger fromIndex) {
        return NSArray._indexOf(array,value,fromIndex);
    };
}

+ (NSArray *(^)(NSArray *,NSInteger,NSInteger))slice
{
    return ^NSArray *(NSArray *array,NSInteger start,NSInteger end) {
        return NSArray._slice(array,start,end);
    };
}

+ (void(^)(NSArray *,lodashIteratorBlock))each
{
    return ^(NSArray *array,lodashIteratorBlock block) {
        NSArray._each(array,block);
    };
}

+ (NSArray *(^)(NSArray *,id,NSInteger))replaceInArray
{
    return ^NSArray *(NSArray *array,id value,NSInteger atIndex) {
        return NSArray._replace(array,value,atIndex);
    };
}

+ (NSArray *(^)(NSArray *,NSArray *))difference
{
    return ^NSArray *(NSArray *array,NSArray *values) {
        return NSArray._difference(array,values);
    };
}

#pragma mark - String shortcuts
+ (lodashReturnStringBlock)capitalize
{
    return ^NSString *(NSString *string) {
        return NSString._capitalize(string);
    };
}

+ (lodashReturnStringBlock)lowercase
{
    return ^NSString *(NSString *string) {
        return NSString._lowercase(string);
    };
}

+ (lodashReturnStringBlock)uppercase
{
    return ^NSString *(NSString *string) {
        return NSString._uppercase(string);
    };
}

+ (lodashReturnPadStringBlock)padLeft
{
    return ^NSString *(NSString *string,NSInteger n,NSString *chars) {
        return NSString._padLeft(string,n,chars);
    };
}

+ (lodashReturnPadStringBlock)padRight
{
    return ^NSString *(NSString *string,NSInteger n,NSString *chars) {
        return NSString._padRight(string,n,chars);
    };
}

+ (lodashReturnParseIntStringBlock)parseInt
{
    return ^NSString *(NSInteger integer) {
        return NSString._parseInt(integer);
    };
}

+ (lodashReturnRepeatStringBlock)repeat
{
    return ^NSString *(NSString *string,NSInteger n) {
        return NSString._repeat(string,n);
    };
}

+ (lodashReturnContainStringBlock)contain
{
    return ^BOOL(NSString *string,NSString *contain) {
        return NSString._contain(string,contain);
    };
}

+ (lodashReturnReplaceStringBlock)replace
{
    return ^NSString *(NSString *string,NSString *of,NSString *with) {
        return NSString._replace(string,of,with);
    };
}

+ (lodashReturnStringBlock)trim
{
    return ^NSString *(NSString *string) {
        return NSString._trim(string);
    };
}

+ (lodashReturnStripStringBlock)strip
{
    return ^NSString *(NSString *string,NSString *target) {
        return NSString._strip(string,target);
    };
}

+ (lodashReturnSplitStringBlock)split
{
    return ^NSArray *(NSString *string,NSString *separator) {
        return NSString._split(string,separator);
    };
}

+ (lodashReturnJoinStringBlock)join
{
    return ^NSString *(NSArray *strings,NSString *joiner) {
        return NSString._join(strings,joiner);
    };
}

+ (lodashReturnEndsWithStringBlock)startsWith
{
    return ^BOOL(NSString *string,NSString *target) {
        return NSString._startsWith(string,target);
    };
}

+ (lodashReturnEndsWithStringBlock)endsWith
{
    return ^BOOL(NSString *string,NSString *target) {
        return NSString._endsWith(string,target);
    };
}

+ (lodashReturnStringBlock)escape
{
    return ^NSString *(NSString *string) {
        return NSString._escape(string);
    };
}

+ (lodashReturnStringBlock)unescape
{
    return ^NSString *(NSString *string) {
        return NSString._unescape(string);
    };
}

#pragma mark - Math shortcuts
+ (lodashReturnMathArgsBlock)add
{
    return ^double(double a, double b) {
        return NSObject._add(a,b);
    };
}

+ (lodashReturnMathArgBlock)ceil
{
    return ^double(double a) {
        return NSObject._ceil(a);
    };
}

+ (lodashReturnMathArgBlock)floor
{
    return ^double(double a) {
        return NSObject._floor(a);
    };
}

+ (lodashReturnMathArgsBlock)max
{
    return ^double(double a, double b) {
        return NSObject._max(a,b);
    };
}

+ (lodashReturnMathArgsBlock)min
{
    return ^double(double a, double b) {
        return NSObject._min(a,b);
    };
}

+ (lodashReturnMathArgBlock)abs
{
    return ^double(double a) {
        return NSObject._abs(a);
    };
}

+ (lodashReturnMathArgsBlock)pow
{
    return ^double(double a,double power) {
        return NSObject._pow(a,power);
    };
}

+ (lodashReturnMathArgBlock)sqrt
{
    return ^double(double a) {
        return NSObject._sqrt(a);
    };
}

+ (lodashReturnMathArgBlock)round
{
    return ^double(double a) {
        return NSObject._round(a);
    };
}

+ (lodashReturnMathIdBlock)sum
{
    return ^double(NSArray *obj) {
        return NSObject._sum(obj);
    };
}

#pragma mark - Utility shortcuts
+ (void (^)(NSInteger, lodashIteratorIntegerBlock))times
{
    return ^(NSInteger n, lodashIteratorIntegerBlock block) {
        NSObject._times(n,block);
    };
}

+ (lodashReturnIntegerBlock)random
{
    return ^NSInteger(NSInteger max) {
        return NSObject._random(max);
    };
}

+ (lodashReturnRangeIntegerBlock)range
{
    return ^NSInteger(NSInteger min, NSInteger max) {
        return NSObject._range(min,max);
    };
}

+ (lodashReturnStringBlock)uniqueId
{
    return ^NSString *(NSString *prefix) {
        return NSObject._uniqueId(prefix);
    };
}

#pragma mark - Lang shorcuts
+ (lodashReturnBoolBlock)isArray
{
    return ^BOOL(id obj) {
        return NSObject._isArray(obj);
    };
}

+ (lodashReturnBoolBlock)isNumber
{
    return ^BOOL(id obj) {
        return NSObject._isNumber(obj);
    };
}

+ (lodashReturnBoolBlock)isString
{
    return ^BOOL(id obj) {
        return NSObject._isString(obj);
    };
}

+ (lodashReturnBoolBlock)isNull
{
    return ^BOOL(id obj) {
        return NSObject._isNull(obj);
    };
}

+ (lodashReturnBoolBlock)isDictionary
{
    return ^BOOL(id obj) {
        return NSObject._isDictionary(obj);
    };
}

+ (lodashReturnBoolBlock)isDate
{
    return ^BOOL(id obj) {
        return NSObject._isDate(obj);
    };
}

+ (lodashReturnBoolBlock)isData
{
    return ^BOOL(id obj) {
        return NSObject._isData(obj);
    };
}

+ (lodashReturnBoolBlock)isSet
{
    return ^BOOL(id obj) {
        return NSObject._isSet(obj);
    };
}

+ (lodashReturnBoolBlock)isEmpty
{
    return ^BOOL(id obj) {
        return NSObject._isEmpty(obj);
    };
}

+ (lodashReturnEqualBoolBlock)isEqual
{
    return ^BOOL(id a,id b) {
        return NSObject._isEqual(a,b);
    };
}

+ (lodashReturnArrayBlock)toArray
{
    return ^NSArray *(id obj) {
        return NSObject._toArray(obj);
    };
}

+ (lodashReturnCompareBoolBlock)gt
{
    return ^BOOL(NSInteger a,NSInteger b) {
        return NSObject._gt(a,b);
    };
}

+ (lodashReturnCompareBoolBlock)gte
{
    return ^BOOL(NSInteger a,NSInteger b) {
        return NSObject._gte(a,b);
    };
}

+ (lodashReturnCompareBoolBlock)lt
{
    return ^BOOL(NSInteger a,NSInteger b) {
        return NSObject._lt(a,b);
    };
}

+ (lodashReturnCompareBoolBlock)lte
{
    return ^BOOL(NSInteger a,NSInteger b) {
        return NSObject._lte(a,b);
    };
}

@end
