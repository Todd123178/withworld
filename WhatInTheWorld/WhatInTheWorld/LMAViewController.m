//
//  LMAViewController.m
//  WhatInTheWorld
//
//  Created by Jung, Terry on 5/14/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import "LMAViewController.h"

@interface LMAViewController ()

@end

@implementation LMAViewController

NSArray *states;
NSArray *capitals;
NSArray *statePics;
NSString *scoreOut;
int score = 0;
int randNum = 0;
int tries = 0;
NSArray *same;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    same = @[@"0", @"0", @"0", @"0", @"0",
             @"0", @"0", @"0", @"0", @"0",
             @"0", @"0", @"0", @"0", @"0",
             @"0", @"0", @"0", @"0", @"0",
             @"0", @"0", @"0", @"0", @"0"];
    
    states = @[@"alabama", @"alaska", @"arizona", @"arkansas", @"california",
               @"colorado", @"connecticut", @"deleware", @"florida", @"georgia",
               @"hawaii", @"idaho", @"illinois", @"indiana", @"iowa",
               @"kansas", @"kentucky", @"louisiana", @"maine", @"maryland",
               @"massachusetts", @"michigan", @"minnesota", @"mississippi", @"missouri",
               @"montana", @"nebraska", @"nevada", @"new hampshire", @"new jersey",
               @"new mexico", @"new york", @"north carolina", @"north dakota", @"ohio",
               @"oklahoma", @"oregon", @"pennsylvania", @"rhode island", @"south carolina",
               @"south dakota", @"tennessee", @"texas", @"utah", @"vermont",
               @"virginia", @"washington", @"west virginia", @"wisconsin", @"wyoming"];
    
    capitals = @[@"montgomery", @"juneau", @"phoenix", @"little rock", @"sacramento",
                 @"denver", @"hartford", @"dover", @"tallahassee", @"atlanta",
                 @"honolulu", @"boise", @"springfield", @"indianapolis", @"des moines",
                 @"topeka", @"frankfort", @"baton rouge", @"augusta", @"annapolis",
                 @"boston", @"lansing", @"st. paul", @"jackson", @"jefferson city",
                 @"helena", @"lincoln", @"carson city", @"concord", @"trenton",
                 @"santa fe", @"albany", @"raleigh", @"bismarck", @"columbus",
                 @"oklahoma city", @"salem", @"harrisburg", @"providence", @"columbia",
                 @"pierre", @"nashville", @"austin", @"salt lake city", @"montpelier",
                 @"richmond", @"olympia", @"charleston", @"madison", @"cheyenne"];
    
    statePics = [NSArray arrayWithObjects:
                 [UIImage imageNamed:@"alabama.png"],
                 [UIImage imageNamed:@"alaska.png"],
                 [UIImage imageNamed:@"arizona.png"],
                 [UIImage imageNamed:@"arkansas.png"],
                 [UIImage imageNamed:@"california.png"],
                 [UIImage imageNamed:@"colorado.png"],
                 [UIImage imageNamed:@"connecticut.png"],
                 [UIImage imageNamed:@"delaware.png"],
                 [UIImage imageNamed:@"florida.png"],
                 [UIImage imageNamed:@"georgia.png"],
                 [UIImage imageNamed:@"hawaii.png"],
                 [UIImage imageNamed:@"idaho.png"],
                 [UIImage imageNamed:@"illinois.png"],
                 [UIImage imageNamed:@"indiana.png"],
                 [UIImage imageNamed:@"iowa.png"],
                 [UIImage imageNamed:@"kansas.png"],
                 [UIImage imageNamed:@"kentucky.png"],
                 [UIImage imageNamed:@"louisiana.png"],
                 [UIImage imageNamed:@"maine.png"],
                 [UIImage imageNamed:@"maryland.png"],
                 [UIImage imageNamed:@"massachusetts.png"],
                 [UIImage imageNamed:@"michigan.png"],
                 [UIImage imageNamed:@"minnesota.png"],
                 [UIImage imageNamed:@"mississippi.png"],
                 [UIImage imageNamed:@"missouri.png"],
                 [UIImage imageNamed:@"montana.png"],
                 [UIImage imageNamed:@"nebraska.png"],
                 [UIImage imageNamed:@"nevada.png"],
                 [UIImage imageNamed:@"new_hampshire.png"],
                 [UIImage imageNamed:@"new_jersey.png"],
                 [UIImage imageNamed:@"new_mexico.png"],
                 [UIImage imageNamed:@"new_york.png"],
                 [UIImage imageNamed:@"north_carolina.png"],
                 [UIImage imageNamed:@"north_dakota.png"],
                 [UIImage imageNamed:@"ohio.png"],
                 [UIImage imageNamed:@"oklahoma.png"],
                 [UIImage imageNamed:@"oregon.png"],
                 [UIImage imageNamed:@"pennsylvania.png"],
                 [UIImage imageNamed:@"rhode_island.png"],
                 [UIImage imageNamed:@"south_carolina.png"],
                 [UIImage imageNamed:@"south_dakota.png"],
                 [UIImage imageNamed:@"tennessee.png"],
                 [UIImage imageNamed:@"texas.png"],
                 [UIImage imageNamed:@"utah.png"],
                 [UIImage imageNamed:@"vermont.png"],
                 [UIImage imageNamed:@"virginia.png"],
                 [UIImage imageNamed:@"washington.png"],
                 [UIImage imageNamed:@"west_virginia.png"],
                 [UIImage imageNamed:@"wisconsin.png"],
                 [UIImage imageNamed:@"wyoming"],
                 nil];
    
    // int num = random();
    //randNum = rand() % 50;
    //randNum = random() % 50;
    randNum = 0 + arc4random() % (50 - 0);
    UIImage *pic = [statePics objectAtIndex:randNum];
    [_statePic setImage:pic];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitGuess:(UIButton *)sender {
    //int randNum = 0 + arc4random() % (50 - 0);
    
    NSString *name1 = [_capitalGuess text];
    NSString *name2 = [capitals objectAtIndex:randNum];
    
    if([name1 isEqualToString: name2]) {
        // [same replaceObjectAtIndex: randNum withObject: @"1"];
        NSString *output = [NSString stringWithFormat: @"Correct"];
        [_lblOutput setText:output];
        
        randNum = 0 + arc4random() % (50 - 0);
        // randNum = random() % 50;
        UIImage *replacePic = [statePics objectAtIndex:randNum];
        // UIImage *pic = [UIImage imageNamed: @"alabama.png"];
        [_statePic setImage:replacePic];
        
        [_capitalGuess setText:@""];
        
        score += 100;
        scoreOut = [NSString stringWithFormat:@"%d", score];
        [_score setText:scoreOut];
    }
    else
    {
        [_capitalGuess setText:@""];
        [_lblOutput setText:@"Sorry. Try Again."];
        tries++;
        if(tries == 3)
        {
            [_lblOutput setText:@"Game Over"];
            
            score = 0;
            scoreOut = [NSString stringWithFormat:@"%d", score];
            [_score setText: scoreOut];
            
            [_lblOutput setText:@"New Game"];
        }
    }
    
}

-(IBAction)backgroundTap:(id)sender
{
    [self.view endEditing:YES];
}

-(void)viewDidLayoutSubviews
{
    _scrollView.contentSize = CGSizeMake(320, 500);
}

@end
