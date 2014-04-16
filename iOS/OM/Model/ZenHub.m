//
//  ZenHub.m
//  One
//
//  Created by Felipe on 3/17/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenHub.h"

// ZenHub - inherits all values from ZenDevice
// For devices with WiFi capabilities, like cameras and smartplugs.


// Variable Values:
NSString* const ZenHubNetworkSSID    = @"huSSID";

//Fixed Values:
NSString* const ZenHubHostName       = @"huHostName";
NSString* const ZenHubIPAddress      = @"huIPAddress";
NSString* const ZenHubPortNo         = @"huPortNumber";

@implementation ZenHub

#pragma mark - getters

-(NSString*) getHostName
{
    return [self retrieve:ZenHubHostName];
}

-(NSString*) getIPAddress
{
    return [self retrieve:ZenHubIPAddress];
}

-(NSNumber*) getPortNo
{
    return [self retrieve:ZenHubPortNo];
}

#pragma mark - setters

-(void) setHostName:(NSString*)name
{
    [self store:name forKey:ZenHubHostName];
}

-(void) setIPAddress:(NSString*)address
{
    [self store:address forKey:ZenHubIPAddress];
}

-(void) setPortNo:(NSNumber*)port
{
    [self store:port forKey:ZenHubPortNo];
}

@end
