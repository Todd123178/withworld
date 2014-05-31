//
//  LMAViewController.h
//  WhatInTheWorld
//
//  Created by Jung, Terry on 5/14/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LMAViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UILabel *hint;

@property (weak, nonatomic) IBOutlet UITextField *capitalGuess;
- (IBAction)submitGuess:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblOutput;
@property (weak, nonatomic) IBOutlet UILabel *state;

@property (weak, nonatomic) IBOutlet UIImageView *statePic;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
- (IBAction)backgroundTap:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *high;
@property (weak, nonatomic) IBOutlet UILabel *displayHigh;

@property (weak, nonatomic) IBOutlet UILabel *displayHint;

@property (weak, nonatomic) IBOutlet UILabel *score;
@end
