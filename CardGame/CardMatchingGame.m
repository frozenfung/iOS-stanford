//
//  CardMatchingGame.m
//  CardGame
//
//  Created by frozenfung on 2015/3/8.
//  Copyright (c) 2015年 frozenfung. All rights reserved.
//


#import "CardMatchingGame.h"

@interface CardMatchingGame()
@property (nonatomic, readwrite) NSInteger score;
@property (strong, nonatomic)NSMutableArray *cards;
@end

@implementation CardMatchingGame
- (NSMutableArray *)cards{
  if(!_cards) _cards = [[NSMutableArray alloc] init];
  return _cards;
}

- (instancetype)initWithCardCount:(NSUInteger)count
                        usingDeck:(Deck *)deck{
  self = [super init];
  if (self) {
    for (int i = 0; i < count; i++){
      Card *card = [deck drawRandomCard];
      if (card){
        [self.cards addObject:card];
      }else{
        self = nil;
        break;
      }
    }
  }

  return self;
}


- (Card *) cardAtIndex:(NSUInteger)index{
  return (index < [self.cards count]) ? self.cards[index] : nil;
}

static const int PENALTY = 2;
static const int BONUS = 4;
static const int COST = 1;


- (void) chooseCardWithIndex:(NSUInteger)index{
  Card* card = [self cardAtIndex:index];
  if (!card.isMatched){
    if(card.isChosen){
      card.chosen = NO;
    }else{
      for(Card *otherCard in self.cards){
        if(otherCard.isChosen && !otherCard.isMatched){
          int matchScore = [card match:@[otherCard]];
                             if (matchScore){
                               self.score += matchScore * BONUS;
                               card.matched = YES;
                               otherCard.matched = YES;
                             }else{
                               self.score -= PENALTY;
                               otherCard.chosen = NO;
                             }

        }
        break;
      }
      self.score -= COST;
      card.chosen = YES;
    }
  }
}







@end