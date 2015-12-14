//  Created by Israel San Jose on 27/07/2015.

#import "lodash+String.h"

#import "lodash+Utility.h"
#import "lodash+Lang.h"

@implementation NSString (String)

#pragma mark - Methods
+ (lodashReturnStringBlock)_capitalize
{
    return ^NSString *(NSString *string) {
        NSString *final = [self baseToString:string];
        return [final capitalizedString];
    };
}

+ (lodashReturnStringBlock)_lowercase
{
    return ^NSString *(NSString *string) {
        NSString *final = [self baseToString:string];
        return [final lowercaseString];
    };
}

+ (lodashReturnStringBlock)_uppercase
{
    return ^NSString *(NSString *string) {
        NSString *final = [self baseToString:string];
        return [final uppercaseString];
    };
}

+ (lodashReturnPadStringBlock)_padLeft
{
    return ^NSString *(NSString *string,NSInteger n,NSString *chars) {
        NSString *final = [self baseToString:string];
        chars = chars ? chars : @"";
        return [NSString stringWithFormat:@"%@%@",[self createPadding:chars length:n],final];
    };
}

+ (lodashReturnPadStringBlock)_padRight
{
    return ^NSString *(NSString *string,NSInteger n,NSString *chars) {
        NSString *final = [self baseToString:string];
        chars = chars ? chars : @"";
        return [NSString stringWithFormat:@"%@%@",final,[self createPadding:chars length:n]];
    };
}

+ (lodashReturnContainStringBlock)_contain
{
    return ^BOOL(NSString *string,NSString *contain) {
        NSString *final = [self baseToString:string];
        NSString *finalContain = [[NSString alloc] initWithString:contain];
        return [final containsString:finalContain];
    };
}

+ (lodashReturnReplaceStringBlock)_replace
{
    return ^NSString *(NSString *string,NSString *of,NSString *with) {
        NSString *final = [self baseToString:string];
        NSString *finalOf = [self baseToString:of];
        NSString *finalWith = [self baseToString:with];
        return [final stringByReplacingOccurrencesOfString:finalOf withString:finalWith];
    };
}

+ (lodashReturnParseIntStringBlock)_parseInt
{
    return ^NSString *(NSInteger integer) {
        return [NSString stringWithFormat:@"%ld",(long)integer];
    };
}

+ (lodashReturnRepeatStringBlock)_repeat
{
    return ^NSString *(NSString *string,NSInteger times) {
        if (times == 0) {
            return @"";
        }
        NSString __block *final = [NSString new];
        NSString *finalString = [self baseToString:string];
        _.times(times,^(NSInteger n){
            final = [final stringByAppendingString:finalString];
        });
        return final;
    };
}

+ (lodashReturnStringBlock)_trim
{
    return ^NSString *(NSString *string) {
        NSString *final = [self baseToString:string];
        while ([final hasPrefix:@" "] || [final hasSuffix:@" "]) {
            final = [final hasPrefix:@" "] ? [final substringFromIndex:1] : final;
            final = [final hasSuffix:@" "] ? [final substringToIndex:final.length - 1] : final;
        }
        return final;
    };
}

+ (lodashReturnStripStringBlock)_strip
{
    return ^NSString *(NSString *string,NSString *target) {
        NSString *final = [self baseToString:string];
        return target ? [final stringByReplacingOccurrencesOfString:target withString:@""] : final;
    };
}

+ (lodashReturnSplitStringBlock)_split
{
    return ^NSArray *(NSString *string,NSString *separator) {
        NSString *final = [self baseToString:string];
        return separator ? [final componentsSeparatedByString:separator] : @[];
    };
}

+ (lodashReturnJoinStringBlock)_join
{
    return ^NSString *(NSArray *strings,NSString *joiner) {
        NSParameterAssert(NSObject.isArray(strings));
        NSMutableArray *finalStrings = [NSMutableArray arrayWithCapacity:strings.count];
        for (NSString *string in strings) {
            NSParameterAssert(NSObject.isString(string));
            [finalStrings addObject:[self baseToString:string]];
        }
        return [finalStrings componentsJoinedByString:joiner];
    };
}

+ (lodashReturnEndsWithStringBlock)_startsWith
{
    return ^BOOL(NSString *string,NSString *target) {
        NSString *temp = [self baseToString:string];
        NSString *tempTarget = [self baseToString:target];
        NSParameterAssert(tempTarget.length > 0);
        NSRange range = [temp rangeOfString:tempTarget];
        if(range.location == NSNotFound) {
            return NO;
        }
        return range.location == 0;
    };
}

+ (lodashReturnEndsWithStringBlock)_endsWith
{
    return ^BOOL(NSString *string,NSString *target) {
        NSString *temp = [self baseToString:string];
        NSString *tempTarget = [self baseToString:target];
        NSParameterAssert(tempTarget.length > 0);
        NSRange range = [temp rangeOfString:tempTarget];
        if(range.location == NSNotFound) {
            return NO;
        }
        return range.location + tempTarget.length == temp.length;
    };
}

/**
 Functions for escaping and unescaping strings to/from HTML interpolation.
 */
#define ESCAPEMAP @[ \
    @{@"key":@"&",@"value":@"&amp;"}, \
    @{@"key":@"<",@"value":@"&lt;"}, \
    @{@"key":@">",@"value":@"&gt;"}, \
    @{@"key":@"\"",@"value":@"&quot;"}, \
    @{@"key":@"'",@"value":@"&#x27;"}, \
    @{@"key":@"`",@"value":@"&#x60;"} \
]
#define UNESCAPEMAP @[ \
    @{@"key":@"&amp;",@"value":@"&"}, \
    @{@"key":@"&lt;",@"value":@"<"}, \
    @{@"key":@"&gt;",@"value":@">"}, \
    @{@"key":@"&quot;",@"value":@"\""}, \
    @{@"key":@"&#x27;",@"value":@"'"}, \
    @{@"key":@"&#x60;",@"value":@"`"} \
]
+ (NSString *)createEscaper:(NSArray *)map string:(NSString *)string
{
    NSString *__block temp = [self baseToString:string];
    [map enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL *stop) {
        if (NSString.contain(temp,obj[@"key"])) {
            temp = NSString.replace(temp,obj[@"key"],obj[@"value"]);
        }
    }];
    return temp;
}

+ (lodashReturnStringBlock)_escape
{
    return ^NSString *(NSString *string) {
        return [self createEscaper:ESCAPEMAP string:string];
    };
}

+ (lodashReturnStringBlock)_unescape
{
    return ^NSString *(NSString *string) {
        return [self createEscaper:UNESCAPEMAP string:string];
    };
}

#pragma mark - Helpers
/**
 Converts 'string' to a string if it's not one. 
 An exception is returned for 'null' or 'undefined' values.
 
 @private
 @param {*} string The value to process.
 @returns {string} Returns the string.
 */
+ (NSString *)baseToString:(NSString *)string
{
    NSParameterAssert(string);
    NSParameterAssert(NSObject.isString(string));
    return [[NSString alloc] initWithString:string];
}

/**
 Creates the padding required for 'string' based on the given 'length'.
 The 'chars' string is truncated if the number of characters exceeds 'length'.
 
 @private
 @param {string} string The string used as padding.
 @param {number} [length=0] The padding length.
 @returns {string} Returns the pad for 'string'.
 */
+ (NSString *)createPadding:(NSString *)string length:(NSInteger)length
{
    NSString __block *temp = @"";
    NSObject.times(length,^(NSInteger n){
        temp = [temp stringByAppendingString:string];
    });
    return temp;
}

@end
