//  Created by Israel San Jose on 26/07/2015.

#import <Foundation/Foundation.h>

#pragma mark - Bool Blocks
typedef BOOL(^lodashReturnBoolBlock)(id obj);
typedef BOOL(^lodashReturnEqualBoolBlock)(id a, id b);
typedef BOOL(^lodashReturnCompareBoolBlock)(NSInteger a, NSInteger b);

#pragma mark - Integer Blocks
typedef void(^lodashIteratorIntegerBlock)(NSInteger n);
typedef NSInteger(^lodashReturnIntegerBlock)(NSInteger n);
typedef NSInteger(^lodashReturnRangeIntegerBlock)(NSInteger n, NSInteger m);
typedef double(^lodashReturnMathArgBlock)(double a);
typedef double(^lodashReturnMathArgsBlock)(double a, double b);
typedef double(^lodashReturnMathIdBlock)(NSArray *obj);

#pragma mark - String Blocks
typedef NSString *(^lodashReturnStringBlock)(id obj);
typedef BOOL(^lodashReturnEndsWithStringBlock)(NSString *str, NSString *target);
typedef NSString *(^lodashReturnReplaceStringBlock)(NSString *str, NSString *of, NSString *with);
typedef BOOL(^lodashReturnContainStringBlock)(NSString *str, NSString *contain);
typedef NSString *(^lodashReturnPadStringBlock)(NSString *str, NSInteger n, NSString *chars);
typedef NSString *(^lodashReturnStripStringBlock)(NSString *str, NSString *target);
typedef NSArray *(^lodashReturnSplitStringBlock)(NSString *str, NSString *separator);
typedef NSString *(^lodashReturnJoinStringBlock)(NSArray *strs, NSString *joiner);
typedef NSString *(^lodashReturnParseIntStringBlock)(NSInteger integer);
typedef NSString *(^lodashReturnRepeatStringBlock)(NSString *string, NSInteger n);

#pragma mark - Array Blocks
typedef NSArray *(^lodashReturnArrayBlock)(id obj);
typedef id(^lodashIteratorArrayBlock)(id obj,NSInteger index);
typedef void(^lodashIteratorBlock)(id obj,NSInteger index);

#pragma mark - Double Blocks
typedef double(^lodashReturnDoubleBlock)();

