//  Created by Israel San Jose on 07/08/2015.

#import "lodash+Math.h"

@implementation NSObject (Math)

+ (lodashReturnMathArgsBlock)_add
{
    return ^double(double a,double b) {
        a = a ? a : 0;
        b = b ? b : 0;
        return a + b;
    };
}

+ (lodashReturnMathArgBlock)_ceil
{
    return ^double(double a) {
        return ceil(a);
    };
}

+ (lodashReturnMathArgBlock)_floor
{
    return ^double(double a) {
        return floor(a);
    };
}

+ (lodashReturnMathArgsBlock)_max
{
    return ^double(double a,double b) {
        return fmax(a,b);
    };
}

+ (lodashReturnMathArgsBlock)_min
{
    return ^double(double a,double b) {
        return fmin(a,b);
    };
}

+ (lodashReturnMathArgBlock)_round
{
    return ^double(double a) {
        return round(a);
    };
}

+ (lodashReturnMathArgBlock)_abs
{
    return ^double(double a) {
        return fabs(a);
    };
}

+ (lodashReturnMathArgsBlock)_pow
{
    return ^double(double a,double power) {
        return pow(a,power);
    };
}

+ (lodashReturnMathArgBlock)_sqrt
{
    return ^double(double a) {
        return sqrt(a);
    };
}

+ (lodashReturnMathIdBlock)_sum
{
    return ^double(NSArray *obj) {
        NSParameterAssert(NSObject.isArray(obj));
        int index = -1;
        double result = 0;
        while (++index < obj.count) {
            result += [obj[index] doubleValue];
        }
        return result;
    };
}

@end
