# lodash

Lodash is a utility framework which provides productivity to the developer without losing performance.

It is inspired by Javascript module https://github.com/lodash/lodash.

### Quick Example ###

```sh
NSArray *array = @[@1,@2];
NSArray *mapped = _.map(array,^id(id obj,NSInteger index) {
NSInteger value = [obj integerValue] * 3;
return [NSNumber numberWithInteger:value];
});
NSLog(@"mapped array: %@",mapped);
```

### Installation with CocoaPods ###

Lodash is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```sh
pod "lodash_utility"
```

### Utility ###

Available methods on the framework:
* times
* random
* range
* uniqueId

### Lang ###

Available methods on the framework:
* isArray
* isNumber
* isString
* isNull
* isDictionary
* isDate
* isData
* isSet
* isEmpty
* isEqual
* toArray
* gt
* gte
* lt
* lte

### String ###
Available methods on the framework:
* capitalize
* lowercase
* uppercase
* padLeft
* padRight
* contain
* replace
* parseInt
* repeat
* trim
* strip
* split
* join
* startsWith
* endsWith
* escape
* unescape

### Math ###
Available methods on the framework:
* add
* ceil
* floor
* max
* min
* round
* abs
* pow
* sqrt
* sum

### Array ###
Available methods on the framework:
* flatten
* map
* indexOf
* slice
* each
* replaceInArray
* difference

# Utility

### times ###

Iteratee n times, returning an array of the results of each invocation.
'Times' is invoked with one argument: n(number).

**Arguments**

n (integer): The number of times to invoke iteratee.
block (Function): The function invoked per iteration.

**Return**

(void):

**Example**

```sh
NSInteger __block count = 0;
NSInteger times = 10;
_.times(times,^(NSInteger n) {
count++;
});
```

### random ###

Returns a random integer between 0 and max, inclusive.

**Arguments**

max (integer): The max random number possible.

**Return**

(integer): Returns the random integer.

**Example**

```sh
NSInteger res = _.random(100);
```

### range ###

Returns a random integer between min and max, inclusive.
If you only pass one argument, it will return a number between 0 and that number.

**Arguments**

min (integer): The min random number possible.
max (integer): The max random number possible.

**Return**

(integer): Returns the random integer.

**Example**

```sh
NSInteger res = _.range(90,100);
```
### uniqueId ###

Generate a unique integer id (unique within the entire client session).
Useful for temporary ids.
If prefix is passed, the id will be appended to it.

**Arguments**

prefix (string): A prefix if we want to apply one.

**Return**

(string): Returns the random unique id.

**Example**

```sh
NSString *id = _.uniqueId(@"lodash");
```
# Lang

### isArray ###

Checks if value is classified as an Array object.

**Arguments**

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
BOOL res = _.isArray(@[@1,@2]);
```

### isNumber ###

Checks if value is classified as a Number primitive or object.

**Arguments**

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
BOOL res = _.isNumber(@1);
```

### isString ###

Checks if value is classified as a String primitive or object.

**Arguments**

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
BOOL res = _.isString(@"lodash");
```

### isNull ###

Checks if value is null.

**Arguments**

value (id): The value to check.

**Return**

(boolean): Returns true if value is null, else false.

**Example**

```sh
BOOL res = _.isNull([NSNull null]);
BOOL res = _.isNull(@"lodash");
```

### isDictionary ###

Checks if value is classified as a Dictionary primitive or object.

**Arguments**

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
BOOL res = _.isDictionary(@{@"key":@1});
```

### isDate ###

Checks if value is classified as a Date primitive or object.

**Arguments**

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
BOOL res = _.isDate([NSDate date]);
```

### isData ###

Checks if value is classified as a Data primitive or object.

**Arguments**

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
NSString *str = @"lodash";
NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
BOOL res = _.isData(data);
```

### isSet ###

Checks if value is classified as a Set primitive or object.

**Arguments**

value (id): The value to check.

**Return**

(boolean): Returns true if value is correctly classified, else false.

**Example**

```sh
NSSet *set = [NSSet setWithObjects:@1,@2,nil];
BOOL res = _.isSet(set);
```

### isEmpty ###

Checks if value is null.

**Arguments**

value (id): The value to check.

**Return**

(boolean): Returns true if value is null, else false.

**Example**

```sh
BOOL res = _.isEmpty(@[]);
BOOL res = _.isEmpty(@[@1,@2]);
```

### isEqual ###

Performs a deep comparison between two values to determine if they are equivalent.
If customizer is provided it is invoked to compare values.
If customizer returns undefined comparisons are handled by the method instead.
The customizer is bound to thisArg and invoked with three arguments: (value, other [, index|key]).

Note: This method supports comparing arrays, booleans, Date objects, numbers, Object objects, regexes, and strings.
Objects are compared by their own, not inherited, enumerable properties.

**Arguments**

a (id): The value to compare.
b (id): The other value to compare.

**Return**

(boolean): Returns true if the values are equivalent, else false.

**Example**

```sh
BOOL res = _.isEqual(@"1",@"2");
BOOL res = _.isEqual(@[@1,@2],@[@1,@2]);
BOOL res = _.isEqual(@{@"key":@1},@{@"key":@2});
```

### toArray ###

Converts value to an array.

**Arguments**

value (id): The NSSet to convert.

**Return**

(NSArray): Returns the converted array.

**Example**

```sh
NSSet *set = [NSSet setWithObjects:@1,@2,nil];
NSArray *array = _.toArray(set);
```

### gt / gte ###

gt : Checks if value is greater than other.
gte : Checks if value is greater than or equal other.

**Arguments**

a (NSInteger): The value to compare.
b (NSInteger): The other value to compare.

**Return**

(boolean): Returns true if value is greater than other, else false.

**Example**

```sh
BOOL res = _.gt(4,3);
BOOL res = _.gte(4,3);
```

### lt / lte ###

lt : Checks if value is less than other.
lte : Checks if value is less than or equal other.

**Arguments**

a (NSInteger): The value to compare.
b (NSInteger): The other value to compare.

**Return**

(boolean): Returns true if value is greater than other, else false.

**Example**

```sh
BOOL res = _.lt(4,3);
BOOL res = _.lte(4,3);
```

# String

### capitalize ###

Capitalizes the first character of string.

**Arguments**

[string=''] (string): The string to capitalize.

**Return**

(string): Returns the capitalized string.

**Example**

```sh
NSString *res = _.capitalize(@"lodash");
```

### lowercase ###

Converts the string to lowercase.

**Arguments**

[string=''] (string): The string to convert.

**Return**

(string): Returns the uppercase string.

**Example**

```sh
NSString *res = _.lowercase(@"LoDAsh");
```

### uppercase ###

Converts the string to uppercase.

**Arguments**

[string=''] (string): The string to convert.

**Return**

(string): Returns the uppercase string.

**Example**

```sh
NSString *res = _.uppercase(@"lodash");
```

### padLeft ###

Pads string on the left side if it’s shorter than length.
Padding characters are truncated if they exceed length.

**Arguments**

[string=''] (string): The string to pad.
[length=0] (number): The padding length.
[chars=' '] (string): The string used as padding.

**Return**

(string): Returns the padded string.

**Example**

```sh
NSString *res = _.padLeft(@"lodash",5,@" ");
```

### padRight ###

Pads string on the right side if it’s shorter than length.
Padding characters are truncated if they exceed length.

**Arguments**

[string=''] (string): The string to pad.
[length=0] (number): The padding length.
[chars=' '] (string): The string used as padding.

**Return**

(string): Returns the padded string.

**Example**

```sh
NSString *res = _.padRight(@"lodash",5,@" ");
```

### contain ###

Searches the string in a specific string.

**Arguments**

[string=''] (string): The string to search.

**Return**

(boolean): Returns true if the target string is contained within the string.

**Example**

```sh
BOOl res = _.contain(@"lodash",@"da");
```

### replace ###

Replaces all occurences in the given string.

**Arguments**

string (string): The string to replace.
of (string): Occurences to replace.
with (string): The string to replace with.

**Return**

(string): Returns the replaced string.

**Example**

```sh
NSString *res = _.replace(@"lodash is awesome",@"lodash",@"underscore");
```

### parseInt ###

Converts string to an integer.

**Arguments**

string (string): The string to convert.

**Return**

(int): Returns the converted integer.

**Example**

```sh
NSString *res = _.parseInt(123);
```

### repeat ###

Repeats the given string n times.

**Arguments**

[string=''] (string): The string to repeat.
(number): The number of times to repeat the string.

**Return**

(string): Returns the repeated string.

**Example**

```sh
NSString *res = _.repeat(@"123",3);
```

### trim ###

Removes leading and trailing whitespace from string.

**Arguments**

[string=''] (string): The string to trim.

**Return**

(string): Returns the trimmed string.

**Example**

```sh
NSString *res = _.trim(@"  123      ");
```

### strip ###

Removes occurrences of the given string.

**Arguments**

string (string): The string to strip.
separator (string): Occurrences to remove.

**Return**

(string): Returns the stripped string.

**Example**

```sh
NSStrin *res = _.strip(@"12345",@"3");
```

### split ###

Splits the string at the given separator.
Returns a nil array if the separator is nil.

**Arguments**

string (string): The string to split.
separator (string): Separator.

**Return**

(array): Returns the splitted array.

**Example**

```sh
NSArray *array = _.split(@"1,2,3",@",");
```

### join ###

Joins the strings in the array.

**Arguments**

(array): The array with the strings

**Return**

(string): Returns the joined string.

**Example**

```sh
NSString *res = _.join(@[@"1",@"2",@"3"],@",");
```

### startsWith ###

Checks if string starts with the given target string.

**Arguments**

string (string): The string to search.
target (string): The string to search for.

**Return**

(boolean): Returns true if string ends with target, else false.

**Example**

```sh
NSString *res = _.startsWith(@"lodash",@"lo");
```

### endsWith ###

Checks if string ends with the given target string.

**Arguments**

string (string): The string to search.
target (string): The string to search for.

**Return**

(boolean): Returns true if string ends with target, else false.

**Example**

```sh
NSString *res = _.endsWith(@"lodash",@"sh");
```

### escape ###

Escapes a string for insertion into HTML, replacing &, <, >, ", `, and ' characters.

**Arguments**

string (string): String to escape.

**Return**

(string): Returns the escaped string.

**Example**

```sh
NSString *res = _.escape(@"lod&ash");
```

### unescape ###

The opposite of escape, replaces &amp;, &lt;, &gt;, &quot;, &#96; and &#x27; with their unescaped counterparts.

**Arguments**

string (string): String to escape.

**Return**

(string): Returns the unescaped string.

**Example**

```sh
NSString *res = _.unescape(@"lod&ampash");
```

# Math

### add ###

Adds two numbers.

**Arguments**

a (number): The first number to add.
b (number): The second number to add.

**Return**

(number): Returns the sum.

**Example**

```sh
double res = _.add(4,6); // 10
```

### ceil ###

Calculates n rounded up to precision.

**Arguments**

n (number): The number to round up.

**Return**

(number): Returns the rounded up number.

**Example**

```sh
double res = _.ceil(4.2); // 5
```

### floor ###

Calculates n rounded down to precision.

**Arguments**

n (number): The number to round down.

**Return**

(number): Returns the rounded down number.

**Example**

```sh
double res = _.floor(4.2); // 4
```

### max ###

Gets the maximum value of the values given.

**Arguments**

a (number): First number to compare.
b (number): Second number to compare

**Return**

(number): Returns the maximum value.

**Example**

```sh
double res = _.max(2,3); // 3
```

### min ###

Gets the minimum value of the values given.

**Arguments**

a (number): First number to compare.
b (number): Second number to compare

**Return**

(number): Returns the minimum value.

**Example**

```sh
double res = _.min(2,3); // 2
```

### round ###

Calculates n rounded to precision.

**Arguments**

n (number): The number to round.

**Return**

(number): Returns the rounded number.

**Example**

```sh
double res = _.round(4.6); // 5
```

### abs ###

Computes the absolute value of the given number.

**Arguments**

n (number): The number to compute.

**Return**

(number): Returns the absolute number.

**Example**

```sh
double res = _.abs(-2); // 2
```

### power ###

Computes a raised to the power b.

**Arguments**

a (number): The number to compute.
b (number): Precision.

**Return**

(number): Returns the powered number.

**Example**

```sh
double res = _.pow(2,2); // 4
```

### sqrt ###

Calculates the square root function.

**Arguments**

n (number): The number to compute.

**Return**

(number): Returns the calculated number.

**Example**

```sh
double res = _.sqrt(4); // 2
```

### sum ###

Gets the sum of the values in collection.

**Arguments**

collection (Array|Object|string): The collection to iterate over.

**Return**

(number): Returns the sum.

**Example**

```sh  
double res = _.sum(@[@1,@2,@3,@4,@"abc"]);
```

# Array

### flatten ###

Flattens a nested array.

**Arguments**

array (Array): The array to flatten.

**Return**

(Array): Returns the new flattened array.

**Example**

```sh
NSArray *array = @[@1,@[@2,@3,@[@4]]];
NSArray *flattened = _.flatten(array);
```

### map ###

Creates an array of values by running each element in collection through iteratee.
The iteratee is bound to thisArg and invoked with three arguments: (value,index).

**Arguments**

array (Array): The collection to iterate over.
block (Function): The function invoked per iteration.

**Return**

(Array): Returns the new mapped array.

**Example**

```sh
NSArray *array = @[@1,@2];
NSArray *mapped = _.map(array,^id(id obj,NSInteger index) {
NSInteger value = [obj integerValue] * 3;
return [NSNumber numberWithInteger:value];
});
```

### indexOf ###

Gets the index at which the first occurrence of value is found in array.
If fromIndex is negative, it’s used as the offset from the end of array.

**Arguments**

array (Array): The array to search.
value (*): The value to search for.
fromIndex (number): The index to search from.

**Return**

(number): Returns the index of the matched value, else NSNotFound.

**Example**

```sh
NSArray *array = @[@1,@2,@3,@4,@5];
NSInteger index1 = _.indexOf(array,@3,0); // 2
NSInteger index2 = _.indexOf(array,@7,0); // NotFound
if (NSNotFound == index) {
NSLog(@"not found");
}
```

### slice ###

Creates a slice of array from start up to end.

**Arguments**

array (Array): The array to slice.
[start=0] (number): The start position.
[end=array.length] (number): The end position.

**Return**

(Array): Returns the slice of array.

**Example**

```sh
NSArray *array = @[@1,@2,@3,@4,@5];
NSArray *sliced = _.slice(array,1,3); // [2,3,4]
```

### each ###

Iterates over elements of array invoking iteratee for each element.
The iteratee is invoked with two arguments: (value, index).
Iteratee functions may exit iteration early by explicitly 'return;'.

**Arguments**

array (Array): The array to iterate over.

**Return**

(*):

**Example**

```sh
NSArray *array = @[@1,@2];
__block NSInteger num = 0;
_.each(array,^(id obj,NSInteger index) {
num += [obj integerValue];
}); // num = 3
```

### replaceInArray ###

Replace the value at a specific index.

**Arguments**

array (Array): The array to work with.
value (id): value to insert.
atIndex (number): index to replace the value;

**Return**

(Array): replaced array.

**Example**

```sh
NSArray *array = @[@1,@2,@3,@4];
NSArray *replaced = _.replaceInArray(array,@0,1);
}); // [@1,@0,@3,@4]
```

### difference ###

Creates an array excluding all provided values.

**Arguments**

array (Array): The array to filter.
values (Array): The values to exclude.

**Return**

(Array): Returns the new array of filtered values.

**Example**

```sh
NSArray *array = @[@1,@2,@3,@4];
NSArray *replaced = _.difference(array,@[@1]);
}); // [@2,@3,@4]
```