//
//  TSAppDelegate.h
//  TSEmojiView
//
//  Created by Shawn Ma on 7/24/12.
//  Copyright (c) 2012 Telenav Software, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TSViewController;

@interface TSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) TSViewController *viewController;

@end
