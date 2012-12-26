//
//  JKAppDelegate.h
//  Inspector
//
//  Created by Joris Kluivers on 12/26/12.
//  Copyright (c) 2012 Joris Kluivers. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "JKMainWindowController.h"

@interface JKAppDelegate : NSObject <NSApplicationDelegate>

@property (strong) NSWindowController *mainWindowController;

@end
