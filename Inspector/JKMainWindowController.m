//
//  JKMainWindowController.m
//  Inspector
//
//  Created by Joris Kluivers on 12/26/12.
//  Copyright (c) 2012 Joris Kluivers. All rights reserved.
//

#import "JKMainWindowController.h"

#import "JKConfiguration.h"
#import "JKConfigurationGroup.h"
#import "JKConfigurationHeaderRowView.h"
#import "NSTableCellView+JKNibLoading.h"

@interface JKMainWindowController ()

@end

@implementation JKMainWindowController {
	NSArray *_configurations;
}

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
		JKConfigurationGroup *identity = [JKConfigurationGroup configurationWithTitle:@"Identity and Type"];
		identity.children = @[
			[JKConfiguration configurationWithNibName:@"FileInspector" height:150.f]
		];
		
		_configurations = @[
			identity,
			[JKConfigurationGroup configurationWithTitle:@"Localization"],
			[JKConfigurationGroup configurationWithTitle:@"Target Membership"]
		];
    }
    
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    [self.configurationCollection setFloatsGroupRows:NO];
}

#pragma mark - Outline view configuration

- (BOOL) outlineView:(NSOutlineView *)outlineView isGroupItem:(id)item {
	id representedObject = [item representedObject];
	
	return [representedObject isKindOfClass:[JKConfigurationGroup class]];
}

- (NSView *) outlineView:(NSOutlineView *)outlineView viewForTableColumn:(NSTableColumn *)tableColumn item:(id)item {
	if ([self outlineView:outlineView isGroupItem:item]) {
		return [outlineView makeViewWithIdentifier:@"HeaderView" owner:self];
	}
	
	JKConfiguration *config = [item representedObject];
	if (!config.nibName) {
		return [outlineView makeViewWithIdentifier:@"DefaultCell" owner:self];
	}
	
	NSView *cellView = [outlineView makeViewWithIdentifier:config.nibName owner:self];
	if (!cellView) {
		cellView = [NSTableCellView tableCellViewWithNibNamed:config.nibName owner:self];
	}
	
	return cellView;
	
}

- (CGFloat) outlineView:(NSOutlineView *)outlineView heightOfRowByItem:(id)item {
	if ([self outlineView:outlineView isGroupItem:item]) {
		return 18.f;
	}
	
	JKConfiguration *config = [item representedObject];
	if (config.nibName) {
		return config.height;
	}
	
	return 20.0f;
}

- (NSTableRowView *) outlineView:(NSOutlineView *)outlineView rowViewForItem:(id)item {
	if (![self outlineView:outlineView isGroupItem:item]) {
		return nil;
	}
	
	JKConfigurationHeaderRowView *rowView = [outlineView makeViewWithIdentifier:@"HeaderRowView" owner:nil];
	if (!rowView) {
		rowView = [[JKConfigurationHeaderRowView alloc] initWithFrame:CGRectZero];
		rowView.identifier = @"HeaderRowView";
	}
	
	return rowView;
}

- (void) outlineView:(NSOutlineView *)outlineView didAddRowView:(NSTableRowView *)rowView forRow:(NSInteger)row {
	NSInteger nearestGroup = row;
	while (nearestGroup >= 0) {
		if ([self outlineView:outlineView isGroupItem:[outlineView itemAtRow:nearestGroup]]) {
			break;
		}
		
		nearestGroup -= 1;
	}
	
	NSInteger rowIndex = row - nearestGroup;
	
	if (rowIndex % 2 == 0) {
		rowView.backgroundColor = [NSColor colorWithDeviceWhite:0.87f alpha:1.0f];
	} else {
		rowView.backgroundColor = [NSColor colorWithDeviceWhite:0.915f alpha:1.0f];
	}
}

@end
