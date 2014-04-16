//
//  ZenElementWater.m
//  One
//
//  Created by Felipe on 3/17/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenElementWater.h"

// ZenElementWater - inherits all values from ZenElement
// Common values for all Water Elements

//Variable Values:
NSString* const ZenWaterState               = @"waState";
NSString* const ZenWaterTemp                = @"waTemp";
NSString* const ZenWaterHumidity            = @"waHumidity";


@implementation ZenElementWater

#pragma mark - getters

-(NSNumber*) getState
{
    return [self retrieve:ZenWaterState];
}

-(NSNumber*) getTemp
{
    return [self retrieve:ZenWaterTemp];
}

-(NSNumber*) getHumidity
{
    return [self retrieve:ZenWaterHumidity];
}

#pragma mark - setters

-(void) setState:(NSNumber*)val
{
    [self store:val forKey:ZenWaterState];
}

-(void) setTemp:(NSNumber*)val
{
    [self store:val forKey:ZenWaterTemp];
}

-(void) setHumidity:(NSNumber*)val
{
    [self store:val forKey:ZenWaterHumidity];
}

@end
