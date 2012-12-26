//
//  NSTableCellView+JKNibLoading.h
//  ShapeDemo
//
//  Created by Joris Kluivers on 4/12/12.
//  Copyright (c) 2012 Tarento Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSTableCellView (JKNibLoading)

+ (id)tableCellViewWithNibNamed:(NSString *)nibName owner:(id)owner;

@end
