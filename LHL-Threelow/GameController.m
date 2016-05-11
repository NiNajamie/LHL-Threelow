//
//  GameController.m
//  LHL-Threelow
//
//  Created by Asuka Nakagawa on 2016-05-04.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"


@implementation GameController

- (instancetype)init {
    self = [super init];
    if (self) {
        _dice = [NSMutableArray array];
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        [_dice addObjectsFromArray:@[dice1,dice2,dice3,dice4,dice5]];
        _heldDice = [NSMutableSet set];
    }
    return self;
}
// add a method holdDice for 'hold' feature
// use your holdDie: method to toggle dice between the "held" and "un-held" state in your data model.
- (void)holdDie:(int)dieNumber {
    
    // Bracketing [] the held values when you print them out.
    // Access to property: heldDice in Dice-class
    Dice * aDie = [self.dice objectAtIndex:dieNumber];
    if ([_heldDice containsObject:aDie]) {
        [self.heldDice removeObject:aDie];
        NSLog(@"Un-hold Dice number is: %d", aDie.currentValue);

    } else {
        // Access to print-out the number with [] that means 'held'
        [self.heldDice addObject:aDie];
        NSLog(@"Hold Dice number is: [%d]", aDie.currentValue);

    }
    
}

// method to print allDice
- (void)printAllDice {
    for (Dice *myDice in _dice) {
        if ([_heldDice containsObject:myDice]) {
            NSLog(@"value of my dice: %d", myDice.currentValue);
            
        }else {
            NSLog(@"value of my dice: %d", myDice.currentValue);
        }
    }
}
// Add a resetDice: method that changes all the buttons to the un-held state in the data model.
-(void)resetDice {
    [self.heldDice removeAllObjects];
    NSLog(@"ALL the held number removed.");
}

// Add method to your controller that calculates and returns the current score by adding up all the held dice values.

- (int)currentScore {
    int totalScore = 0;
    for (Dice *score in _heldDice) {
        totalScore = totalScore + score.currentValue;
    }
    return totalScore;
}


@end
