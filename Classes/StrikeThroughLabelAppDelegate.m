//
//  StrikeThroughLabelAppDelegate.m
//  StrikeThroughLabel
//
//  Created by Scott Hodgin on 12/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "StrikeThroughLabelAppDelegate.h"

@implementation StrikeThroughLabelAppDelegate


@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Override point for customization after application launch.
    CGRect frame = CGRectMake(5, 20, 310, 25);
    _label = [[StrikeThroughLabel alloc] initWithFrame:frame];
    _label.text = @"Strike-through Text";
    _label.textAlignment = UITextAlignmentCenter;
    
    frame = CGRectMake(5, 50, 310, 25);
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = frame;
    [button setTitle:@"Toggle Strike-through" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
    
    [window addSubview:_label];
    [window addSubview:button];
    [window makeKeyAndVisible];
    return YES;
}

- (void)buttonPress:(id)sender {
    
    if (_label.strikeThroughEnabled) {
        _label.strikeThroughEnabled = NO;
    } else {
        _label.strikeThroughEnabled = YES;
    }
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
    // Save data if appropriate.
}

- (void)dealloc {
    
    [_label release];
    [window release];
    [super dealloc];
}

@end
