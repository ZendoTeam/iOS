//
//  ZenSmartPlug.m
//  One
//
//  Created by Felipe on 3/17/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenSmartPlug.h"

// ZenSmartPlug - inherits all values from ZenHub
// For Zendo Smart Plugs

// Variable Values:
NSString* const ZenSmartPlugDimming  = @"spDimming";

//Fixed Values:
NSString* const ZenSmartPlugPower     = @"spPower";
NSString* const ZenSmartPlugVoltage   = @"spVoltage";

@implementation ZenSmartPlug

#pragma mark - getters

-(NSNumber*) getDimming
{
    return [self retrieve:ZenSmartPlugDimming];
}

-(NSNumber*) getPower
{
    return [self retrieve:ZenSmartPlugPower];
}

-(NSNumber*) getVoltage
{
    return [self retrieve:ZenSmartPlugVoltage];
}

#pragma mark - setters

-(void) setDimming:(NSNumber*)value
{
    [self store:value forKey:ZenSmartPlugDimming];
}

-(void) setPower:(NSNumber*)power
{
    [self store:power forKey:ZenSmartPlugPower];
}

-(void) setVoltage:(NSNumber*)voltage
{
    [self store:voltage forKey:ZenSmartPlugVoltage];
}

@end
