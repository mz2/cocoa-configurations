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

- (instancetype) init
{
	self = [super init];
	if (self) {
		_children = nil;
	}
	return self;
}

- (instancetype) initWithNibName:(NSString *)name modes:(NSDictionary *)modesDictionary
{
	self = [super init];
	if (self) {
        
		_children = nil;
		_nibName = name;
        
        assert(modesDictionary);
        _modes = modesDictionary;
        
        _mode = @"normal";
	}
	return self;
}

+ (instancetype) configuration
{
	return [[self alloc] init];
}

+ (instancetype) configurationWithNibName:(NSString *)name modes:(NSDictionary *)modesDictionary
{
	return [[self alloc] initWithNibName:name modes:modesDictionary];
}

- (CGFloat)height
{
    assert(_mode);
    assert(_modes);
    assert(_modes[_mode][@"height"]);
    return [_modes[_mode][@"height"] floatValue];
}

- (NSString *) description
{
	return [NSString stringWithFormat:@"<%@>", NSStringFromClass([self class])];
}

@end
