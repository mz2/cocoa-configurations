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
	[self.textField.cell setBackgroundStyle:NSBackgroundStyleRaised];
}

- (void)drawRect:(NSRect)dirtyRect
{
#define JKColor(r, g, b) [NSColor colorWithDeviceRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0f]
	
	// purlple like
	NSColor *startColor = JKColor(236, 237, 250);
	NSColor *endColor = JKColor(189, 192, 212);
	
	NSGradient *gradient = [[NSGradient alloc] initWithStartingColor:startColor endingColor:endColor];
	[gradient drawInRect:self.bounds angle:270.0f];
}

@end
