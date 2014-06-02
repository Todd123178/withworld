//
//  LMAViewController.m
//  WhatInTheWorld
//
//  Created by Jung, Terry on 5/14/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import "LMAViewController.h"
#import <AudioToolbox/AudioToolbox.h>
#import <CoreMotion/CoreMotion.h>

@interface LMAViewController ()

@end

@implementation LMAViewController

NSArray *capitals; // Array of capital names
NSArray *statePics; // Array of state pictures
NSString *scoreOut; // String of numbers that will be used to output the score to the screen
NSString *highScoreOut; // // String of numbers that will be used to output the high score to the screen
int score = 0; // Sets the score in the app to start at 0
int randNum = 0;
int tries = 0; // Counts the number of lives/tries for the
int highScore;
NSUserDefaults *prefs;


- (void)viewDidLoad
{
     prefs = [NSUserDefaults standardUserDefaults];
    highScore=[prefs integerForKey:@"HighScore"];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
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
    highScoreOut= [NSString stringWithFormat:@"%d", highScore];
    [_high setText:highScoreOut];
    [_displayHigh setText:highScoreOut];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
}

-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSString *name2 = [capitals objectAtIndex:randNum];
    NSString *hint = [name2 substringWithRange:[name2 rangeOfComposedCharacterSequenceAtIndex:0]];
    NSString *hint2 = [name2 substringWithRange:[name2 rangeOfComposedCharacterSequenceAtIndex:1]];
    
    if(tries == 1)
    {
        hint = [NSString stringWithFormat:@"HINT: First letter of capital is '%@'", hint];
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:hint message:nil delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
    
        [alertView show];
        // [alertView release];
    }
    else if(tries == 2)
    {
        hint2 = [NSString stringWithFormat:@"HINT: First part of capital is '%@%@'", hint, hint2];
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:hint2 message:nil delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
        
        [alertView show];
        // [alertView release];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitGuess:(UIButton *)sender {
    //int randNum = 0 + arc4random() % (50 - 0);
    
    NSString *name1 = [_capitalGuess text];
    NSString *lower = [name1 lowercaseString];
    NSString *name2 = [capitals objectAtIndex:randNum];
    //NSString *hint = [name2 substringWithRange:[name2 rangeOfComposedCharacterSequenceAtIndex:0]];
    //NSString *hint2 = [name2 substringWithRange:[name2 rangeOfComposedCharacterSequenceAtIndex:1]];
    
    if([lower isEqualToString: name2]) {
        // [same replaceObjectAtIndex: randNum withObject: @"1"];
        NSString *output = [NSString stringWithFormat: @"Correct"];
        [_lblOutput setText:output];
        
        randNum = 0 + arc4random() % (50 - 0);
        // randNum = random() % 50;
        UIImage *replacePic = [statePics objectAtIndex:randNum];
        // UIImage *pic = [UIImage imageNamed: @"alabama.png"];
        [_statePic setImage:replacePic];
        
        [_capitalGuess setText:@""];
        if(tries==0)
        {
        score += 100;
        }
        else if(tries==1)
        {
        score+=50;
        }
        
        scoreOut = [NSString stringWithFormat:@"%d", score];
        [_score setText:scoreOut];
        if(highScore<=score)
        {
        highScore=score;
        [prefs setInteger:highScore forKey:@"HighScore"];
        highScoreOut= [NSString stringWithFormat:@"%d", highScore];  
        [_high setText:highScoreOut];
            
        }
        tries=0;
        
     }
    else
    {
        if(tries == 0)
        {
            // hint = [NSString stringWithFormat:@"First letter of capital: %@", hint];
            // [_displayHint setText: hint];
        }
        if(tries == 2)
        {
            // hint2 = [NSString stringWithFormat:@"First part of capital: %@%@", hint, hint2];
            // [_displayHint setText: hint2];
        }
        
        [_capitalGuess setText:@""];
        [_lblOutput setText:@"Sorry. Try Again."];
        tries++;
        if(tries == 4)
        {
            [_lblOutput setText:@"Game Over"];
            [_displayHint setText: @""];
            highScore=score;
            score = 0;
            scoreOut = [NSString stringWithFormat:@"%d", score];
            [_score setText: scoreOut];
            
            [_lblOutput setText:@"New Game"];
            tries=0;
            randNum = 0 + arc4random() % (50 - 0);
            // randNum = random() % 50;
            UIImage *replacePic = [statePics objectAtIndex:randNum];
            // UIImage *pic = [UIImage imageNamed: @"alabama.png"];
            [_statePic setImage:replacePic];
            
            
        }
    }
    
    if(highScore<=score){
        
    [prefs setInteger:highScore forKey:@"HighScore"];
    }
    [_high setText:highScoreOut];
    [self.view setNeedsDisplay];
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
