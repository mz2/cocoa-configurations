//
//  NSTableCellView+JKNibLoading.m
//  ShapeDemo
//
//  Created by Joris Kluivers on 4/12/12.
//  Copyright (c) 2012 Tarento Software. All rights reserved.
//

#import "NSTableCellView+JKNibLoading.h"

@implementation NSTableCellView (JKNibLoading)

+ (id) tableCellViewWithNibNamed:(NSString *)nibName owner:(id)owner
{
    NSView * view = nil;
    NSArray * topLevelObjects = nil;
	
    NSNib * nib = [[NSNib alloc] initWithNibNamed:nibName bundle:nil];
    if (!nib || ![nib instantiateWithOwner:owner topLevelObjects:&topLevelObjects]) {
        return nil;
    }
	
    for (id obj in topLevelObjects) {
        if ([obj isKindOfClass:[self class]]) {
            view = obj;
            break;
        }
    }
	
    return view;
}

@end
