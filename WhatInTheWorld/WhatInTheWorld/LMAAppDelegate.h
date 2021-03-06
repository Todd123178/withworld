//
//  LMAAppDelegate.h
//  WhatInTheWorld
//
//  Created by Jung, Terry on 5/14/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface LMAAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (readonly) CMMotionManager *motionManager;

@end
