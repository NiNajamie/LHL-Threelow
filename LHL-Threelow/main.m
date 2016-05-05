//
//  main.m
//  LHL-Threelow
//
//  Created by Asuka Nakagawa on 2016-05-04.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"

/* NEED TO START WITH: */


int main(int argc, const char * argv[]) {
  @autoreleasepool {
      
      GameController *controller = [[GameController alloc] init];
      
      // Make 5 instances of the Dice class & put them into loop to print out the getRandomNumbers
      Dice *dice1 = [[Dice alloc] init];
      Dice *dice2 = [[Dice alloc] init];
      Dice *dice3 = [[Dice alloc] init];
      Dice *dice4 = [[Dice alloc] init];
      Dice *dice5 = [[Dice alloc] init];
      
      InputCollector* inputCollector = [[InputCollector alloc] init];
//      NSLog(@"%lu", (unsigned long)dice.currentValue);
      
    // array of dice
      NSArray *dices = [NSArray arrayWithObjects:dice1, dice2, dice3, dice4, dice5, nil];
      

      for (int i = 0; i < 5; i++) {
          Dice *dice = [dices objectAtIndex:i];
          NSLog(@"%@", @(dice.currentValue));
      }
      

    // your collection of held dice (MutableSet)
      NSMutableSet *track = [NSMutableSet setWithObjects:dices, nil];
      NSLog(@"%@", track);
      
      
      
    
    while (YES) {
        NSString *input = [inputCollector inputForPrompt:@"type 'roll' for rolling dice, 'reset' for reset, 'hold' for showing the totalscore!:"];

        // type roll for rolling dice
        if ([input isEqualToString:@"roll"]) {
            
            // to ask the dice for getting getRandomNumber
            for (int i = 0; i < dices.count; i++) {
                Dice *dice = [dices objectAtIndex:i];
                [dice getRandomNumber];
//                NSLog(@"Dice #%d: %d", i+1, dice.currentValue);
                // add the method to show total of currentScore
//                NSLog(@"%d", controller.);

            }
            
            [controller printAllDice];
//            NSLog(@"Total score: %d", controller.currentScore);
            
            // When the user inputs reset, call the resetDice method.
        } else if ([input isEqualToString:@"reset"]) {
            [controller resetDice];
            
        } else if ([input isEqualToString:@"hold"]) {
//            [controller printAllDice];
            
            // to get returnvalue(int),
            // ask user to make int
            NSString *diceStr = [inputCollector inputForPrompt:@"Which dice?"];
            int diceNumber = [diceStr intValue];
            [controller holdDie:diceNumber];
            
        } else {
            break;
        }
    }
      
  }
    return 0;
}
