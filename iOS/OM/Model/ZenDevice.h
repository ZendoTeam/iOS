//
//  ZenElement.h
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZenDevice : NSObject

@property (retain, nonatomic) NSString* uuidString;
@property (retain, nonatomic) NSString* name;

@property (retain, nonatomic) NSString* location;
@property (retain, nonatomic) NSString* sublocation;
@property (retain, nonatomic) NSString* description;
@property (retain, nonatomic) UIImage*  image;

@property (retain, nonatomic) NSString* model_no;
@property (retain, nonatomic) NSString* serial_no;
@property (retain, nonatomic) NSString* firmware_ver;

@property (retain, nonatomic) NSString* ownerID;
@property (nonatomic) Boolean status; // true = active, false = inactive

-(id)init;

@end
