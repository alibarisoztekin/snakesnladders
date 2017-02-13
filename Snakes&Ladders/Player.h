//
//  Player.h
//  Snakes&Ladders
//
//  Created by Ali Barış Öztekin on 2017-02-12.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSInteger currentSquare;
@property (nonatomic,strong) NSDictionary* gameLogic;
@property (nonatomic) BOOL gameOver;

-(void)rollDice;

@end
