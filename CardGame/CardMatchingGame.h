//
//  CardMatchingGame.h
//  CardGame
//
//  Created by frozenfung on 2015/3/8.
//  Copyright (c) 2015年 frozenfung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject
-(instancetype)initWithCardCount:(NSUInteger)count
                       usingDeck:(Deck *)deck;
-(void)chooseCardWithIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;
@property (nonatomic, readonly)NSInteger score;
@end