//
//  Card.h
//  CardGame
//
//  Created by frozenfung on 2015/3/7.
//  Copyright (c) 2015年 frozenfung. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatch) BOOL matched;

- (int) match: (Card*) card;

@end