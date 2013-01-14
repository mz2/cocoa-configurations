//
//  JKConfigurationHeaderRowView.m
//  ShapeFactory
//
//  Created by Joris Kluivers on 10/18/12.
//  Copyright (c) 2012 Tarento Software. All rights reserved.
//

#import "JKConfigurationHeaderRowView.h"

@implementation JKConfigurationHeaderRowView {
	BOOL _pressed;
}

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (NSButton *) disclosureButton {
	NSButton *disclosureButton = nil;
	for (NSView *view in [self subviews]) {
		if ([view isKindOfClass:[NSButton class]]) {
			disclosureButton = (NSButton *) view;
			break;
		}
	}
	return disclosureButton;
}

- (void) updateButtonState {
	[[self disclosureButton] highlight:_pressed];
}

- (void) mouseDown:(NSEvent *)theEvent {
	_pressed = YES;
	[self updateButtonState];
}

- (void) mouseDragged:(NSEvent *)theEvent {
	NSPoint point = [self convertPoint:[theEvent locationInWindow] fromView:nil];
	_pressed = NSMouseInRect(point, [self bounds], [self isFlipped]);
	[self updateButtonState];
}

- (void) mouseUp:(NSEvent *)theEvent {
	if(_pressed) {
		[[self disclosureButton] performClick:theEvent];
	}
	
	_pressed = NO;
}

@end

@implementation JKConfigurationRowView
@end