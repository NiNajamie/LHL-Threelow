//
//  Dice.m
//  LHL-Threelow
//
//  Created by Asuka Nakagawa on 2016-05-04.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init {
    self = [super init];
    if (self) {
        [self getRandomNumber];
    }
    return self;
}
// method to get use inputCollector
-(NSString *)inputForPrompt:(NSString *)promptString {
    char inputChars[50];
    NSLog(@"%@", promptString);
    fgets(inputChars,50,stdin);
    return [NSString stringWithUTF8String:inputChars];
}


-(void)getRandomNumber{
// Randomize NSUInteger to set randomNumber
//    NSUInteger randomNumber = arc4random_uniform(6) + 1;
//    self.currentValue = randomNumber;
    
    self.currentValue = arc4random_uniform(6) + 1;
    
//    for (int i = 1; i < 7; i++) {
//        NSLog(@"The random number is %d", randomNumber);
//    }
    // To get what the user inputs in the console
    // (returnValue *)name:(Type what we want*)newName {
//    return self.currentValue;
}

@end
