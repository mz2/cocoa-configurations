//
//  JKConfigurationGroup.m
//  Inspector
//
//  Created by Joris Kluivers on 12/26/12.
//  Copyright (c) 2012 Joris Kluivers. All rights reserved.
//

#import "JKConfigurationGroup.h"

@implementation JKConfigurationGroup

- (id) initWithTitle:(NSString *)title
{
	self = [super init];
	if (self) {
		_title = title;
		self.children = @[[JKConfiguration configuration], [JKConfiguration configuration]];
	}
	return self;
}

+ (id) configurationWithTitle:(NSString *)title
{
	return [[self alloc] initWithTitle:title];
}

- (NSString *) description
{
	return [NSString stringWithFormat:@"<%@: %@>", NSStringFromClass([self class]), self.title];
}

@end
