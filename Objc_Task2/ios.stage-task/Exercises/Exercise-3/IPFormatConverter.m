#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSArray *inputArray = numbersArray;
    NSMutableArray *outputArray = [NSMutableArray new];
    
    for (int i = 0; i < 4; ++i)
    {
         [outputArray addObject:@"0"];
    }
    NSInteger counter = 0;
    
    if (inputArray.count == 0) {
        return @"";
    }
    
    for (int i = 0; i < inputArray.count; i++) {
        if ([inputArray[i] intValue] < 0) {
            return @"Negative numbers are not valid for input.";
        }
    }
    
    for (int i = 0; i < inputArray.count; i++) {
        if ([inputArray[i] intValue] > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
    }
    
    for (int i = 0; i < inputArray.count; i++) {
        
        
        if (i < 4) {
            NSString *num =[NSString stringWithFormat:@"%d", [inputArray[i] intValue]];
            [outputArray replaceObjectAtIndex:i withObject:num];
//            counter += 1;
        }
        
        //NSString *result = [[outputArray valueForKey:@"description"] componentsJoinedByString:@"."];
        
    }
    return [[outputArray valueForKey:@"description"] componentsJoinedByString:@"."];
    
}

@end
