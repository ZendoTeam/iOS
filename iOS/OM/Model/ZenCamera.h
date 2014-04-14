//
//  ZenCamera.h
//  One
//
//  Created by Felipe on 3/17/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenDevice.h"

//should be renamed ZenHub

@interface ZenHub : ZenDevice

@property (retain, nonatomic) NSString* hostName;
@property (retain, nonatomic) NSString* ipAddress;
@property (nonatomic)         NSInteger portNumber;

@property (retain, nonatomic) NSArray* children;

@end
