//
//  JKMainWindowController.h
//  Inspector
//
//  Created by Joris Kluivers on 12/26/12.
//  Copyright (c) 2012 Joris Kluivers. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface JKMainWindowController : NSWindowController

@property(weak) IBOutlet NSOutlineView *configurationCollection;

@property(readonly) NSArray *configurations;

@end
