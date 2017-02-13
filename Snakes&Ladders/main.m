//
//  main.m
//  Snakes&Ladders
//
//  Created by Ali Barış Öztekin on 2017-02-12.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Welcome to Snakes&Ladders\n");
        
        Player* testPlayer = [[Player alloc] init];
        while (YES) {
            NSLog(@"type r to roll");
            NSString* userInput = [UserInput getInput];
            if([userInput isEqualToString:@"r"])
            {
                [testPlayer rollDice];
                if([testPlayer gameOver])
                    break;
            }
            
        }
    }
    return 0;
}
