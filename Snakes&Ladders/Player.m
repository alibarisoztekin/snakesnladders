//
//  Player.m
//  Snakes&Ladders
//
//  Created by Ali Barış Öztekin on 2017-02-12.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogic = @{@4:@14,@9:@30,@17:@7,@20:@38,@28:@84,@40:@59,@51:@67,@63:@81,@64:@60,@95:@75,@99:@78};
        _gameOver = NO;
    }
    return self;

}
-(void)rollDice
{
    int rollResult = arc4random_uniform(6)+1;
    NSLog(@"rolled %i",rollResult);
    _currentSquare +=rollResult;
    NSNumber* logicCheck =[[NSNumber alloc] initWithInteger:_currentSquare];
    if(_currentSquare >= 100)
    {
        _gameOver = YES;
        NSLog(@"You win");
    }
    else
    {
        for (NSNumber* key in _gameLogic)
        {
        
            if([logicCheck isEqualToNumber:key])
            {
                _currentSquare = [[_gameLogic objectForKey:key] integerValue];
            
                if([key integerValue] < [[_gameLogic objectForKey:key] integerValue])
                NSLog(@"YAY! You jumped from %@ to %@",key,[_gameLogic objectForKey:key]);
                else
                NSLog(@"BOO:( You fell from from %@ to %@",key,[_gameLogic objectForKey:key]);

            }
        }
         NSLog(@"Current square :%li",(long)_currentSquare);
    }
}


@end
