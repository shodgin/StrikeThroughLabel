//
//  StrikeThroughLabelAppDelegate.h
//  StrikeThroughLabel
//
//  Created by Scott Hodgin on 12/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StrikeThroughLabel.h"

@interface StrikeThroughLabelAppDelegate : NSObject <UIApplicationDelegate> {
    
    StrikeThroughLabel *_label;
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
