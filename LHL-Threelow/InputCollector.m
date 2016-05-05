//
//  InputCollector.m
//  LHL-Threelow
//
//  Created by Asuka Nakagawa on 2016-05-04.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

// grab the inputForPrompt(NSString) as the user input
-(NSString *)inputForPrompt:(NSString *)promptString {
        char inputChars[50];
        NSLog(@"%@", promptString);
        fgets(inputChars,50,stdin);
            return [[NSString stringWithUTF8String:inputChars] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
}


@end
