//
//  JKConfiguration.m
//  Inspector
//
//  Created by Joris Kluivers on 12/26/12.
//  Copyright (c) 2012 Joris Kluivers. All rights reserved.
//

#import "JKConfiguration.h"

@interface JKConfiguration ()

@end

@implementation JKConfiguration {
}

- (id) init
{
	self = [super init];
	if (self) {
		_children = nil;
	}
	return self;
}

- (id) initWithNibName:(NSString *)name height:(CGFloat)height
{
	self = [super init];
	if (self) {
		_children = nil;
		_nibName = name;
		_height = height;
	}
	return self;
}

+ (id) configuration
{
	return [[self alloc] init];
}

+ (id) configurationWithNibName:(NSString *)name height:(CGFloat)height
{
	return [[self alloc] initWithNibName:name height:height];
}

- (NSString *) description
{
	return [NSString stringWithFormat:@"<%@>", NSStringFromClass([self class])];
}

@end
