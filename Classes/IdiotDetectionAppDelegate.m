//
//  IdiotDetectionAppDelegate.m
//  IdiotDetection
//
//  Created by Lucas Steuernagel on 11/29/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import "IdiotDetectionAppDelegate.h"
#import "IdiotDetectionViewController.h"

@implementation IdiotDetectionAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
	sleep(2);
	
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
