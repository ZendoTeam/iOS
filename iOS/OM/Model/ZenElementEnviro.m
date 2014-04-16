//
//  ZenElementEnviro.m
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenElementEnviro.h"

// ZenElementEnviro inherits all values from ZenElement
// Common values for all Enviro Elements

//Variable Values:
NSString* const ZenElementTemp              = @"enTemp";
NSString* const ZenElementTempMax           = @"enTempMax";
NSString* const ZenElementTempMin           = @"enTempMin";

NSString* const ZenElementHumidity          = @"enHumidity";
NSString* const ZenElementHumidityMax       = @"enHumidityMax";
NSString* const ZenElementHumidityMin       = @"enHumidityMin";

NSString* const ZenElementPressure          = @"enPressure";
NSString* const ZenElementPressureMax       = @"enPressureMax";
NSString* const ZenElementPressureMin       = @"enPressureMin";

@implementation ZenElementEnviro

#pragma mark - getters

-(NSNumber*) getTemp
{
    return [self retrieve:ZenElementTemp];
}

-(NSNumber*) getTempMax
{
    return [self retrieve:ZenElementTempMax];
}

-(NSNumber*) getTempMin
{
    return [self retrieve:ZenElementTempMin];
}

-(NSNumber*) getHumidity
{
    return [self retrieve:ZenElementHumidity];
}

-(NSNumber*) getHumidityMax
{
    return [self retrieve:ZenElementHumidityMax];
}

-(NSNumber*) getHumidityMin
{
    return [self retrieve:ZenElementHumidityMin];
}

-(NSNumber*) getPressure
{
    return [self retrieve:ZenElementPressure];
}

-(NSNumber*) getPressureMax
{
    return [self retrieve:ZenElementPressureMax];
}

-(NSNumber*) getPressureMin
{
    return [self retrieve:ZenElementPressureMin];
}

#pragma mark - setters

-(void) setTemp:(NSNumber*)val
{
    [self store:val forKey:ZenElementTemp];
}

-(void) setTempMax:(NSNumber*)val
{
    [self store:val forKey:ZenElementTempMax];
}

-(void) setTempMin:(NSNumber*)val
{
    [self store:val forKey:ZenElementTempMin];
}

-(void) setHumidity:(NSNumber*)val
{
    [self store:val forKey:ZenElementHumidity];
}

-(void) setHumidityMax:(NSNumber*)val
{
    [self store:val forKey:ZenElementHumidityMax];
}

-(void) setHumidityMin:(NSNumber*)val
{
    [self store:val forKey:ZenElementHumidityMin];
}

-(void) setPressure:(NSNumber*)val
{
    [self store:val forKey:ZenElementPressure];
}

-(void) setPressureMax:(NSNumber*)val
{
    [self store:val forKey:ZenElementPressureMax];
}

-(void) setPressureMin:(NSNumber*)val
{
    [self store:val forKey:ZenElementPressureMin];
}

@end
