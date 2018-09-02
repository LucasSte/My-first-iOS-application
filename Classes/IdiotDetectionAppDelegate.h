//
//  IdiotDetectionAppDelegate.h
//  IdiotDetection
//
//  Created by Lucas Steuernagel on 11/29/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IdiotDetectionViewController;

@interface IdiotDetectionAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    IdiotDetectionViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet IdiotDetectionViewController *viewController;

@end

