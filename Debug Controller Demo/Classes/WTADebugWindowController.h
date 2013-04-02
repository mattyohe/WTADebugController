//
//  WTADebugWindowController.h
//  Debug Controller Demo
//
//  Created by Matt Yohe on 4/2/13.
//  Copyright (c) 2013 Matt Yohe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WTADebugWindowController : NSObject

@property (nonatomic, assign, readonly ,getter = isActive) BOOL active;
@property (nonatomic, strong) UIViewController *debugViewController;

-(void)activateDebugger;
-(void)deactivateDebugger;

@end
