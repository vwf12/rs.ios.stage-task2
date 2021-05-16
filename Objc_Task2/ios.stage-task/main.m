#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        
        //My code
        
        NSArray *inputArray = nil;
        NSMutableArray *outputArray = [NSMutableArray new];
        
        for (int i = 0; i < 4; ++i)
        {
             [outputArray addObject:@"0"];
        }
        NSInteger counter = 0;
        
        if (inputArray.count == 0) {
            NSLog(@"empty");
        }
        
        for (NSNumber *number in inputArray) {
            NSLog(@"%@", number);
            
            if ([number intValue] < 0) {
                return @"Negative numbers are not valid for input.";
            }
            
            if ([number intValue] > 255) {
                return @"The numbers in the input array can be in the range from 0 to 255.";
            }
            
            while (counter != 4) {
                NSString *num =[NSString stringWithFormat:@"%d", [number intValue]];
                [outputArray insertObject:num atIndex:counter];
                counter += 1;
            }
            
            NSString *result = [[outputArray valueForKey:@"description"] componentsJoinedByString:@"."];
            return result;
        }
        //End of my code
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
