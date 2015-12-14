//  Created by Israel San Jose on 26/07/2015.

#import "lodash+Utility.h"

#import "lodash+Lang.h"

@implementation NSObject (Utility)

+ (void (^)(NSInteger, lodashIteratorIntegerBlock))_times
{
    return ^(NSInteger n, lodashIteratorIntegerBlock block) {
        NSParameterAssert(n > 0);
        for (NSInteger iterator = 0; iterator < n; iterator++, block(iterator));
    };
}

+ (lodashReturnIntegerBlock)_random
{
    return ^NSInteger(NSInteger max) {
        return self._range(0,max);
    };
}

+ (lodashReturnRangeIntegerBlock)_range
{
    return ^NSInteger(NSInteger min, NSInteger max) {
        NSParameterAssert(min >= 0);
        NSParameterAssert(max > 0);
        NSParameterAssert(min < max);
        return min + arc4random() % (max - min);
    };
}

static NSInteger idCounter = 0;
+ (lodashReturnStringBlock)_uniqueId
{
    return ^NSString *(NSString *prefix) {
        if (prefix) {
            NSParameterAssert(NSObject.isString(prefix));
        }
        return [NSString stringWithFormat:@"%@%ld", prefix ? prefix : @"",(long)idCounter++];
    };
}

@end
