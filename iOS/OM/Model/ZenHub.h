//
//  ZenHub.h
//  One
//
//  Created by Felipe on 3/17/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenDevice.h"

// ZenHub - inherits all values from ZenDevice
// For devices with WiFi capabilities, like cameras and smartplugs.

@interface ZenHub : ZenDevice

-(NSString*) getHostName;
-(NSString*) getIPAddress;
-(NSNumber*) getPortNo;

-(void) setHostName:(NSString*)name;
-(void) setIPAddress:(NSString*)address;
-(void) setPortNo:(NSNumber*)port;

@property (retain, nonatomic) NSArray* elements;

@end
