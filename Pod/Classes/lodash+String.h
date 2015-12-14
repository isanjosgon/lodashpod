//  Created by Israel San Jose on 27/07/2015.

@import Foundation;

#import "lodash.h"

@interface NSString (String)

/**
 Capitalizes the first character of string.
 
 Arguments
 ---
 [string=''] (string): The string to capitalize.
 
 Returns
 ---
 (string): Returns the capitalized string.
 */
+ (lodashReturnStringBlock)_capitalize;

/**
 Converts the string to lowercase.
 
 Arguments
 ---
 [string=''] (string): The string to convert.
 
 Returns
 ---
 (string): Returns the lowercase string.
 */
+ (lodashReturnStringBlock)_lowercase;

/**
 Converts the string to uppercase.
 
 Arguments
 ---
 [string=''] (string): The string to convert.
 
 Returns
 ---
 (string): Returns the uppercase string.
 */
+ (lodashReturnStringBlock)_uppercase;

/**
 Pads string on the left side if it’s shorter than length.
 Padding characters are truncated if they exceed length.
 
 Arguments
 ---
 [string=''] (string): The string to pad.
 [length=0] (number): The padding length.
 [chars=' '] (string): The string used as padding.
 
 Returns
 ---
 (string): Returns the padded string.
 */
+ (lodashReturnPadStringBlock)_padLeft;

/**
 Pads string on the right side if it’s shorter than length.
 Padding characters are truncated if they exceed length.
 
 Arguments
 ---
 [string=''] (string): The string to pad.
 [length=0] (number): The padding length.
 [chars=' '] (string): The string used as padding.
 
 Returns
 ---
 (string): Returns the padded string.
 */
+ (lodashReturnPadStringBlock)_padRight;

/**
 Searches the string in a specific string.
 
 Arguments
 ---
 [string=''] (string): The string to search.
 
 Returns
 ---
 (boolean): Returns true if the target string is contained within the string.
 */
+ (lodashReturnContainStringBlock)_contain;

/**
 Replaces all occurences in the given string.
 
 Arguments
 ---
 string (string): The string to replace.
 of (string): Occurences to replace.
 with (string): The string to replace with.
 
 Returns
 ---
 (string): Returns the replaced string.
 */
+ (lodashReturnReplaceStringBlock)_replace;

/**
 Converts string to an integer.
 
 Arguments
 ---
 string (string): The string to convert.
 
 Returns
 ---
 (int): Returns the converted integer.
 */
+ (lodashReturnParseIntStringBlock)_parseInt;

/**
 Repeats the given string n times.
 
 Arguments
 ---
 [string=''] (string): The string to repeat.
 (number): The number of times to repeat the string.
 
 Returns
 ---
 (string): Returns the repeated string.
 */
+ (lodashReturnRepeatStringBlock)_repeat;

/**
 Removes leading and trailing whitespace from string.
 
 Arguments
 ---
 [string=''] (string): The string to trim.
 
 Returns
 ---
 (string): Returns the trimmed string.
 */
+ (lodashReturnStringBlock)_trim;

/**
 Removes occurrences of the given string.
 
 Arguments
 ---
 string (string): The string to strip.
 separator (string): Occurrences to remove.
 
 Returns
 ---
 (string): Returns the stripped string.
 */
+ (lodashReturnStripStringBlock)_strip;

/**
 Splits the string at the given separator. 
 Returns a nil array if the separator is nil.
 
 Arguments
 ---
 string (string): The string to split.
 separtor (string): Separator.
 
 Returns
 ---
 (array): Returns the splitted array.
 */
+ (lodashReturnSplitStringBlock)_split;

/**
 Joins the strings in the array.
 
 Arguments
 ---
 (array): The array with the strings
 
 Returns
 ---
 (string): Returns the joined string.
 */
+ (lodashReturnJoinStringBlock)_join;

/**
 Checks if string starts with the given target string.
 
 Arguments
 ---
 string (string): The string to search.
 target (string): The string to search for.
 
 Returns
 ---
 (boolean): Returns true if string ends with target, else false.
 */
+ (lodashReturnEndsWithStringBlock)_startsWith;

/**
 Checks if string ends with the given target string.
 
 Arguments
 ---
 string (string): The string to search.
 target (string): The string to search for.
 
 Returns
 ---
 (boolean): Returns true if string ends with target, else false.
 */
+ (lodashReturnEndsWithStringBlock)_endsWith;

/**
 Escapes a string for insertion into HTML, replacing &, <, >, ", `, and ' characters.
 
 Arguments
 ---
 string (string): String to escape.
 
 Returns
 ---
 (string): Returns the escaped string.
 */
+ (lodashReturnStringBlock)_escape;

/**
 The opposite of escape, replaces &amp;, &lt;, &gt;, &quot;, &#96; and &#x27; with their unescaped counterparts.
 
 Arguments
 ---
 string (string): String to escape.
 
 Returns
 ---
 (string): Returns the unescaped string.
 */
+ (lodashReturnStringBlock)_unescape;

@end
