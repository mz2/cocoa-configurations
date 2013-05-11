//
//  JKConfiguration.h
//  Inspector
//
//  Created by Joris Kluivers on 12/26/12.
//  Copyright (c) 2012 Joris Kluivers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JKConfiguration : NSObject

@property (strong) NSArray *children;
@property (strong) NSString *nibName;

@property (weak) id itemController;

@property (readonly, assign) CGFloat height;

@property (readwrite, strong) NSDictionary *modes;

@property (readwrite, copy) NSString *mode;

+ (instancetype) configuration;

+ (instancetype) configurationWithNibName:(NSString *)name modes:(NSDictionary *)modesDictionary;

@end
