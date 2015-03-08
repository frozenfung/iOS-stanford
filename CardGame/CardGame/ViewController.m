//
//  ViewController.m
//  CardGame
//
//  Created by frozenfung on 2015/3/7.
//  Copyright (c) 2015年 frozenfung. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (strong, nonatomic) PlayingCardDeck *deck;
@end

@implementation ViewController

- (PlayingCardDeck *)deck {
  if(!_deck) _deck = [[PlayingCardDeck alloc] init];
  return _deck;
}

- (IBAction)touchCardButton:(UIButton *)sender {
  if ([sender.currentTitle length]){
    [sender setBackgroundImage: [UIImage imageNamed: @"cardback"] forState:UIControlStateNormal];
    [sender setTitle: @"" forState:UIControlStateNormal];
  }else{
    Card* card = [self.deck drawRandomCard];
    [sender setBackgroundImage: [UIImage imageNamed: @"cardfront"] forState:UIControlStateNormal];
    [sender setTitle: card.contents forState:UIControlStateNormal];
  }
}
@end
