//
//  PlayingCard.h
//  CardGame
//
//  Created by frozenfung on 2015/3/7.
//  Copyright (c) 2015年 frozenfung. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic)NSString *suit;
@property (nonatomic)NSUInteger rank;

+(NSArray *)validSuits;
+(NSArray *)rankStrings;
+(NSUInteger)maxRank;
@end