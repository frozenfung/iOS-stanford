//
//  PlayingCard.m
//  CardGame
//
//  Created by frozenfung on 2015/3/7.
//  Copyright (c) 2015年 frozenfung. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *)contents {
  NSArray *rankString = [PlayingCard rankStrings];
  return [rankString[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

+(NSArray *)validSuits{
  return @[@"♠︎", @"♣︎", @"♥︎", @"♦︎"];
}

+(NSArray *)rankStrings{
  return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+(NSUInteger)maxRank{
  return [[self rankStrings] count] - 1;
}

-(void)setSuit:(NSString *)suit{
  if ([[PlayingCard validSuits] containsObject:suit]){
    _suit = suit;
  }
}

-(NSString *)suit{
  return _suit ? _suit : @"?";
}

@end

