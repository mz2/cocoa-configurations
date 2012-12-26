//
//  JKConfiguration.h
//  Inspector
//
//  Created by Joris Kluivers on 12/26/12.
//  Copyright (c) 2012 Joris Kluivers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JKConfiguration : NSObject

@property(strong) NSArray *children;

+ (id) configuration;

@end
