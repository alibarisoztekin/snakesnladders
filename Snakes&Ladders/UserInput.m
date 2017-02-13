//
//  UserInput.m
//  Snakes&Ladders
//
//  Created by Ali Barış Öztekin on 2017-02-12.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

+(NSString*) getInput
{
    char userInput[255];
    fgets( userInput, sizeof(userInput), stdin);
    NSString* userString = [[NSString alloc] initWithCString:userInput encoding:NSUTF8StringEncoding];
    NSCharacterSet* charSet = [[NSCharacterSet alloc] init];
    charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString* trimmedString = [userString stringByTrimmingCharactersInSet:charSet] ;
    return trimmedString;
}


@end
