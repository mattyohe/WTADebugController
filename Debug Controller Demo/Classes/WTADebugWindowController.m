//
//  WTADebugWindowController.m
//  Debug Controller Demo
//
//  Created by Matt Yohe on 4/2/13.
//  Copyright (c) 2013 Matt Yohe. All rights reserved.
//

#import "WTADebugWindowController.h"

@interface WTADebugWindowController ()
@property (nonatomic, strong) UIWindow *modalWindow;
@property (nonatomic, assign, readwrite ,getter = isActive) BOOL active;
@end

@implementation WTADebugWindowController


-(void)activateDebugger
{
    if (![self isActive]) {
        
        self.modalWindow = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        [[self modalWindow] setRootViewController:[self debugViewController]];
        [[self modalWindow] setWindowLevel:[[[UIApplication sharedApplication] keyWindow] windowLevel] + 1.0];
        [[self modalWindow] makeKeyAndVisible];
        
        [self setActive:YES];
    }
}

-(void)deactivateDebugger
{
    
    switch (self.isActive) {
        case YES:
            
            break;
            
        case NO:
            
        default:
            break;
    }
    
    
    if ([self isActive]) {
        
        [[self modalWindow] resignKeyWindow];
        [[[UIApplication sharedApplication] windows][0] makeKeyWindow];
        [self setModalWindow:nil];
        
        [self setActive:NO];
    }
    
}


@end
