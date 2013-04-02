//
//  WTAAppDelegate.m
//  Debug Controller Demo
//
//  Created by Matt Yohe on 4/2/13.
//  Copyright (c) 2013 Matt Yohe. All rights reserved.
//

#import "WTAAppDelegate.h"
#warning Import the WTADebugWindowController into something like the app delegate
#import "WTADebugWindowController.h"
#import "OverlayViewController.h"

@interface WTAAppDelegate ()
#warning Have a property or instance variable that can hold onto your debug controller
@property (nonatomic, strong) WTADebugWindowController *debugController;
@end

@implementation WTAAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


#warning Envoke the debug controller by the shake gesture. (Simulator keyboard shortcut: ^⌘Z )
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if ([event subtype] == UIEventSubtypeMotionShake) {
        if ([self debugController] == nil) {
            [self setDebugController:[WTADebugWindowController new]];
            [[self debugController] setDebugViewController:[OverlayViewController new]];
        }
        
        [[self debugController] isActive] ? [[self debugController] deactivateDebugger] : [[self debugController] activateDebugger];
        
    }
}


@end
