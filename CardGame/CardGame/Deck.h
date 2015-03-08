//
//  Deck.h
//  CardGame
//
//  Created by frozenfung on 2015/3/7.
//  Copyright (c) 2015年 frozenfung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;
-(Card *) drawRandomCard;

@end
