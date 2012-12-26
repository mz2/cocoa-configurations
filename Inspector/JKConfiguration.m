//
//  JKConfiguration.m
//  Inspector
//
//  Created by Joris Kluivers on 12/26/12.
//  Copyright (c) 2012 Joris Kluivers. All rights reserved.
//

#import "JKConfiguration.h"

@implementation JKConfiguration

- (id) init
{
	self = [super init];
	if (self) {
		_children = nil;
	}
	return self;
}

+ (id) configuration
{
	return [[self alloc] init];
}

- (NSString *) description
{
	return [NSString stringWithFormat:@"<%@>", NSStringFromClass([self class])];
}

@end
