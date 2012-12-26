//
//  JKAppDelegate.m
//  Inspector
//
//  Created by Joris Kluivers on 12/26/12.
//  Copyright (c) 2012 Joris Kluivers. All rights reserved.
//

#import "JKAppDelegate.h"

@implementation JKAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	self.mainWindowController = [[JKMainWindowController alloc] initWithWindowNibName:@"JKMainWindow"];
	[self.mainWindowController showWindow:self];
}

@end
