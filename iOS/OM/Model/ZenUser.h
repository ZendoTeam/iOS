//
//  ZenUser.h
//  One
//
//  Created by Felipe on 3/17/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZenUser : NSObject

@property (retain, nonatomic) NSString* firstName;
@property (retain, nonatomic) NSString* lastName;
@property (retain, nonatomic) NSString* email;
@property (retain, nonatomic) NSString* zipCode;

@property (retain, nonatomic) NSString* role;
@property (retain, nonatomic) UIImage*  image;

@property (retain, nonatomic) NSString* accountType;
@property (retain, nonatomic) NSDate*   expireDate;

@end
