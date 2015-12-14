//  Created by Israel San Jose on 26/07/2015.

#import "lodash.h"

@interface NSObject (Methods)

#pragma mark - String
+ (lodashReturnStringBlock)capitalize;
+ (lodashReturnStringBlock)lowercase;
+ (lodashReturnStringBlock)uppercase;
+ (lodashReturnPadStringBlock)padLeft;
+ (lodashReturnPadStringBlock)padRight;
+ (lodashReturnParseIntStringBlock)parseInt;
+ (lodashReturnRepeatStringBlock)repeat;
+ (lodashReturnStringBlock)trim;
+ (lodashReturnStripStringBlock)strip;
+ (lodashReturnSplitStringBlock)split;
+ (lodashReturnJoinStringBlock)join;
+ (lodashReturnContainStringBlock)contain;
+ (lodashReturnReplaceStringBlock)replace;
+ (lodashReturnEndsWithStringBlock)startsWith;
+ (lodashReturnEndsWithStringBlock)endsWith;
+ (lodashReturnStringBlock)escape;
+ (lodashReturnStringBlock)unescape;

#pragma mark - Dictionary


#pragma mark - Arrays
+ (NSArray *(^)(NSArray *array))flatten;
+ (NSArray *(^)(NSArray *array,lodashIteratorArrayBlock block))map;
+ (NSUInteger(^)(NSArray *,id,NSInteger))indexOf;
+ (NSArray *(^)(NSArray *,NSInteger,NSInteger))slice;
+ (void(^)(NSArray *,lodashIteratorBlock))each;
+ (NSArray *(^)(NSArray *,id,NSInteger))replaceInArray;
+ (NSArray *(^)(NSArray *,NSArray *))difference;

#pragma mark - Set


#pragma mark - Date


#pragma mark - Math
+ (lodashReturnMathArgsBlock)add;
+ (lodashReturnMathArgBlock)ceil;
+ (lodashReturnMathArgBlock)floor;
+ (lodashReturnMathArgsBlock)max;
+ (lodashReturnMathArgsBlock)min;
+ (lodashReturnMathArgBlock)round;
+ (lodashReturnMathArgBlock)abs;
+ (lodashReturnMathArgsBlock)pow;
+ (lodashReturnMathArgBlock)sqrt;
+ (lodashReturnMathIdBlock)sum;

#pragma mark - Utility
+ (void (^)(NSInteger n,lodashIteratorIntegerBlock block))times;
+ (lodashReturnIntegerBlock)random;
+ (lodashReturnRangeIntegerBlock)range;
+ (lodashReturnStringBlock)uniqueId;

#pragma mark - Lang
+ (lodashReturnBoolBlock)isArray;
+ (lodashReturnBoolBlock)isNumber;
+ (lodashReturnBoolBlock)isString;
+ (lodashReturnBoolBlock)isNull;
+ (lodashReturnBoolBlock)isDictionary;
+ (lodashReturnBoolBlock)isDate;
+ (lodashReturnBoolBlock)isData;
+ (lodashReturnBoolBlock)isSet;
+ (lodashReturnBoolBlock)isEmpty;
+ (lodashReturnEqualBoolBlock)isEqual;
+ (lodashReturnArrayBlock)toArray;
+ (lodashReturnCompareBoolBlock)gt;
+ (lodashReturnCompareBoolBlock)gte;
+ (lodashReturnCompareBoolBlock)lt;
+ (lodashReturnCompareBoolBlock)lte;

@end
