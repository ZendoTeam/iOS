//
//  ZenElement.m
//  One
//
//  Created by Felipe on 3/17/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenElement.h"

// ZenElement inherits all values from ZenDevice
// Common values for all battery powered bluetooth devices

//Variable Values:
NSString* const ZenElementBatteryLvl     = @"elBattery";
NSString* const ZenElementSignalLvl      = @"elSignal";
NSString* const ZenElementIntervalDevice = @"elIntervalDevice";
NSString* const ZenElementBluetoothRSSI  = @"elBluetoothRSSI";

//Fixed Values:
NSString* const ZenElementBluetoothUDID  = @"elBluetoothUDID";


@implementation ZenElement

#pragma mark - getters

-(int) getBatteryLvl;
{
    NSNumber *num = [self retrieve:ZenElementBatteryLvl];
    return num.intValue;
}

-(int) getSignalLvl
{
    NSNumber *num = [self retrieve:ZenElementSignalLvl];
    return num.intValue;
}

-(int) getIntervalDevice
{
    NSNumber *num = [self retrieve:ZenElementIntervalDevice];
    return num.intValue;
}

-(NSString*) getBluetoothRSSI
{
    return [self retrieve:ZenElementBluetoothRSSI];
}

-(NSString*) getBluetoothUDID
{
    return [self retrieve:ZenElementBluetoothUDID];
}


#pragma mark - setters

-(void) setBatteryLvl:(int)level
{
    NSNumber *num = [NSNumber numberWithInt:level];
    [self store:num forKey:ZenElementBatteryLvl];
}

-(void) setSignalLvl:(int)level
{
    NSNumber *num = [NSNumber numberWithInt:level];
    [self store:num forKey:ZenElementSignalLvl];
}

-(void) setIntervalDevice:(int)interval
{
    NSNumber *num = [NSNumber numberWithInt:interval];
    [self store:num forKey:ZenElementIntervalDevice];
}

-(void) setBluetoothUDID:(NSString*)udid
{
    [self store:udid forKey:ZenElementBluetoothUDID];
}

-(void) setBluetoothRSSI:(NSString*)rssi
{
    [self store:rssi forKey:ZenElementBluetoothRSSI];
}


@end
