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

/* NEED TO START FROM: final project*/


int main(int argc, const char * argv[]) {
  @autoreleasepool {
      
      NSLog(@"-- Threelow --\n");

      GameController *controller = [[GameController alloc] init];
      
      // Make 5 instances of the Dice class & put them into loop to print out the getRandomNumbers
//      Dice *dice1 = [[Dice alloc] init];
//      Dice *dice2 = [[Dice alloc] init];
//      Dice *dice3 = [[Dice alloc] init];
//      Dice *dice4 = [[Dice alloc] init];
//      Dice *dice5 = [[Dice alloc] init];
      
      InputCollector* inputCollector = [[InputCollector alloc] init];
//      NSLog(@"%lu", (unsigned long)dice.currentValue);
      
    // array of dice
//      NSArray *dices = [NSArray arrayWithObjects:dice1, dice2, dice3, dice4, dice5, nil];
      
      // Each dice(1-5) get through the loop
      for (int i = 0; i < 5; i++) {
          // call the method Access Dice-class to get currentNumber of dice and show it
          Dice *dice = [controller.dice objectAtIndex:i];
          NSLog(@"%@", @(dice.currentValue));
      }
      

    // Collection to store Dice that have been "held" (MutableSet)
//      NSMutableSet *track = [NSMutableSet setWithObjects:controldices, nil];
//      NSLog(@"%@", track);
      
      
      
    // while(Loop) to play the game
    while (YES) {
        NSString *input = [inputCollector inputForPrompt:@"type 'roll' for rolling dice, 'reset' for reset, 'hold' for showing the totalscore!:"];

        //  'roll' for rolling dices
        if ([input isEqualToString:@"roll"]) {

            // Access dice in Dice-class for getting getRandomNumber
            for (int i = 0; i < controller.dice.count; i++) {
                Dice *dice = [controller.dice objectAtIndex:i];
                [dice getRandomNumber];
//                NSLog(@"Dice #%d: %d", i+1, dice.currentValue);
//                  add the method to show total of currentScore
//                NSLog(@"%d", controller.);
            }
            // access to controller to show printAllDice
            [controller printAllDice];
//            NSLog(@"Total score: %d", controller.currentScore);
            
            // When user inputs reset, call the resetDice method.
        } else if ([input isEqualToString:@"reset"]) {
            [controller resetDice];
           // After each roll, allow the user to input dice indexes to hold them.
        } else if ([input isEqualToString:@"hold"]) {
//            [controller printAllDice];
            
            // to get returnValue(int), ask user which dice you want to hold
            NSString *diceStr = [inputCollector inputForPrompt:@"Which dice?"];
            // casting NSString(diceStr) to int(diceNumber)
            int diceNumber = [diceStr intValue];
            // Access to Controller to get holdDie
            [controller holdDie:diceNumber];
            
        } else {
            break;
        }
    }
      
  }
    return 0;
}
