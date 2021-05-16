#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger counter = 0;
    NSSortDescriptor *lowToHigh = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES];
    NSArray *soreted = [array sortedArrayUsingDescriptors:[NSArray arrayWithObject:lowToHigh]];
    
    for (int i = 0; i < soreted.count; i++) {
        for(int j = i +1; j < soreted.count; j++) {
            if (([soreted[j] intValue] - [soreted[i] intValue] - [number intValue]) == 0) {
                counter += 1;
            }
        }
    }
    
    return counter;
}

@end
