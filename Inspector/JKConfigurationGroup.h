//
//  JKConfigurationGroup.h
//  Inspector
//
//  Created by Joris Kluivers on 12/26/12.
//  Copyright (c) 2012 Joris Kluivers. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "JKConfiguration.h"

@interface JKConfigurationGroup : JKConfiguration

@property(strong) NSString *title;
+ (id) configurationWithTitle:(NSString *)title;

@end
