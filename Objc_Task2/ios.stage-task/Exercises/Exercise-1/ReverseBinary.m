#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    NSString *string = @"";
    NSUInteger x = n ;
    NSUInteger counter = 8;

    for (int i = 0; i <8; i++) {
        string = [[NSString stringWithFormat: @"%lu", x&1] stringByAppendingString:string];
        x = x >> 1;
        counter -= 1;
    }
    
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [string length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[string substringWithRange:subStrRange]];
    }

    NSUInteger outputValue = strtol([reversedString UTF8String], NULL, 2);
    
    return outputValue;
}
