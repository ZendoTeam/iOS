//
//  ZenElementSwitch.m
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenElementLight.h"

// ZenElementLight - inherits all values from ZenElement
// Common values for all Light Elements

//Variable Values:
NSString* const ZenLightStatus              = @"ltStatus";
NSString* const ZenLightLEDStatus           = @"ltLEDStatus";
NSString* const ZenLightDimLevel            = @"ltDimLvl";

NSString* const ZenLightFaultCondition      = @"ltFault";
NSString* const ZenLightVoltThreshold       = @"ltVolThr";
NSString* const ZenLightPwrThreshold        = @"ltPwrThr";

@implementation ZenElementLight

#pragma mark - getters

-(NSNumber*) getStatus
{
    return [self retrieve:ZenLightStatus];
}

-(NSNumber*) getLEDStatus
{
    return [self retrieve:ZenLightLEDStatus];
}

-(NSNumber*) getDimLevel
{
    return [self retrieve:ZenLightDimLevel];
}

-(NSNumber*) getFaultCondition
{
    return [self retrieve:ZenLightFaultCondition];
}

-(NSNumber*) getVoltThreshold
{
    return [self retrieve:ZenLightVoltThreshold];
}

-(NSNumber*) getPwrThreshold
{
    return [self retrieve:ZenLightPwrThreshold];
}

#pragma mark - setters

-(void) setStatus:(NSNumber*)status
{
    [self store:status forKey:ZenLightStatus];
}

-(void) setLEDStatus:(NSNumber*)status
{
    [self store:status forKey:ZenLightLEDStatus];
}

-(void) setDimLevel:(NSNumber*)level
{
    [self store:level forKey:ZenLightDimLevel];
}

-(void) setFaultCondition:(NSNumber*)value
{
    [self store:value forKey:ZenLightFaultCondition];
}

-(void) setVoltThreshold:(NSNumber*)value
{
    [self store:value forKey:ZenLightVoltThreshold];
}

-(void) setPwrThreshold:(NSNumber*)value
{
    [self store:value forKey:ZenLightPwrThreshold];
}

@end
