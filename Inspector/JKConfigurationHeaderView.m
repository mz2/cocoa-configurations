//
//  JKConfigurationHeaderView.m
//  ShapeFactory
//
//  Created by Joris Kluivers on 4/14/12.
//  Copyright (c) 2012 Tarento Software. All rights reserved.
//

#import "JKConfigurationHeaderView.h"


@implementation JKConfigurationHeaderView

- (void) awakeFromNib
{
    // the Xcode purple
    #define JKColor(r, g, b) [NSColor colorWithDeviceRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0f]
    if (!self.headerGradientEndColor)
        self.headerGradientEndColor = JKColor(189, 192, 212);
	if (!self.headerGradientStartColor)
        self.headerGradientStartColor = JKColor(236, 237, 250);
	
    [self.textField.cell setBackgroundStyle:NSBackgroundStyleRaised];
}

- (void)drawRect:(NSRect)dirtyRect
{
	NSGradient *gradient = [[NSGradient alloc] initWithStartingColor:_headerGradientStartColor endingColor:_headerGradientEndColor];
	[gradient drawInRect:dirtyRect angle:270.0f];
}

@end
