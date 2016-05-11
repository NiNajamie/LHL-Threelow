//
//  Dice.h
//  LHL-Threelow
//
//  Created by Asuka Nakagawa on 2016-05-04.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

// Have a property to store its current value
@property(nonatomic) int currentValue;

// Method to randomize that value.
-(void)getRandomNumber;


-(NSString *)inputForPrompt:(NSString *)promptString;


@end
