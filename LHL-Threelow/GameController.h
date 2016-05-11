//
//  GameController.h
//  LHL-Threelow
//
//  Created by Asuka Nakagawa on 2016-05-04.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property(strong, nonatomic)NSMutableArray* dataModel;
@property(strong, nonatomic)NSMutableArray* controller;

@property(strong, nonatomic)NSMutableSet* heldDice;
@property(strong, nonatomic)NSMutableArray* dice;

// method to your controller called holdDie:, that "holds" the given dice (by number).
- (void)holdDie:(int)dieNumber;

- (void)printAllDice;

- (void)resetDice;

// Add method to your controller that calculates and returns the current score by adding up all the held dice values.
- (int)currentScore;

@end
