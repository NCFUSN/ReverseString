//
//  main.m
//  ReverseString
//
//  Created by Nathan Furman on 10/21/17.
//  Copyright © 2017 Nathan Furman. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *input = @"abcdef";
        //NSString *input = @"😄😂"; //doesn't work with emojies
        
        // create a string to hold the reversed string value
        NSMutableString *reversedString = [NSMutableString stringWithCapacity:[input length]];
        
        // getting length of the string
        // Have to start iteration with the last index and end up at zero index
        for (NSInteger i = input.length - 1; i >= 0; i--) {
            
            //appending a character to reversed string
            unichar character = [input characterAtIndex:i];
            [reversedString appendFormat:@"%C", character];
        }
        
        // Other way to do this task:
        /*
         [input enumerateSubstringsInRange:NSMakeRange(0,[input length])
         options:(NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences)
         usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
         [reversedString appendString:substring];
         }];
         */
        NSLog(@"%@", reversedString);
    }
    return 0;
}
