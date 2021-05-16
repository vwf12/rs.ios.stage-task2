#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSSortDescriptor *lowToHigh = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES];
    NSSortDescriptor *hightToLow = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
    
    NSMutableArray *outputArray = [NSMutableArray new];
    NSMutableArray *numsArray = [NSMutableArray new];
    NSMutableArray *stringsArray = [NSMutableArray new];
    
    
    for (NSArray *innerArray in array) {
        if (![innerArray isKindOfClass:NSArray.class]) {
            return @[];
        } 
        
         for(id element in innerArray) {
             if ([element isKindOfClass:NSNumber.class])  {
                 [numsArray addObject:element];
             } else {
                 [stringsArray addObject:element];
             }
     }
   }
    
    if ((numsArray.count != 0) && (stringsArray.count == 0)) {
        
        return [numsArray sortedArrayUsingDescriptors:[NSArray arrayWithObject:lowToHigh]];
    }
    
    if ((numsArray.count == 0) && (stringsArray.count != 0)) {

        return [stringsArray sortedArrayUsingDescriptors:[NSArray arrayWithObject:lowToHigh]];
    }
    
    if ((numsArray.count != 0) && (stringsArray.count != 0)) {
        NSArray *numsSorted = [numsArray sortedArrayUsingDescriptors:[NSArray arrayWithObject:lowToHigh]];
        NSArray *stringsSorted = [stringsArray sortedArrayUsingDescriptors:[NSArray arrayWithObject:hightToLow]];
        [outputArray addObject:numsSorted];
        [outputArray addObject:stringsSorted];
        return outputArray;
    }
    
    
    return @[];
}

@end
