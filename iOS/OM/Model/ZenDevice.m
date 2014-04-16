//
//  ZenDevice
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenDevice.h"

// ZenDevice - Base Class
// Holds common values for all devices

//Variable Values:
NSString* const ZenDeviceName           = @"dvName";
NSString* const ZenDeviceLocation       = @"dvLocation";
NSString* const ZenDeviceSublocation    = @"dvSublocation";
NSString* const ZenDeviceDescription    = @"dvDescription";

//Fixed Values:
NSString* const ZenDeviceUDID           = @"dvUDID";
NSString* const ZenDeviceSerialNo       = @"dvSerialno";
NSString* const ZenDeviceType           = @"dvDeviceType";
NSString* const ZenDeviceModelNo        = @"dvModelNo";
NSString* const ZenDeviceInstallDate    = @"dvInstallDate";
NSString* const ZenDeviceHardwareVer    = @"dvHardwareVer";
NSString* const ZenDeviceFirmwareVer    = @"dvFirmwareVer";
NSString* const ZenDeviceManufactName   = @"dvManufactName";


@implementation ZenDevice

#pragma mark - getters

-(NSString*) getName
{
    return [self retrieve:ZenDeviceName];
}

-(NSString*) getLocation
{
    return [self retrieve:ZenDeviceLocation];
}

-(NSString*) getSublocation
{
    return [self retrieve:ZenDeviceSublocation];
}

-(NSString*) getDescription
{
    return [self retrieve:ZenDeviceDescription];
}

-(NSString*) getUDID
{
    return [self retrieve:ZenDeviceUDID];
}

-(NSString*) getSerialNo
{
    return [self retrieve:ZenDeviceSerialNo];
}

-(NSString*) getType
{
    return [self retrieve:ZenDeviceType];
}

-(NSString*) getModelNo
{
    return [self retrieve:ZenDeviceModelNo];
}

-(NSDate*) getInstallDate
{
    return [self retrieve:ZenDeviceInstallDate];
}

-(NSString*) getHardwareVer
{
    return [self retrieve:ZenDeviceHardwareVer];
}

-(NSString*) getFirmwareVer
{
    return [self retrieve:ZenDeviceFirmwareVer];
}

-(NSString*) getManufactName
{
    return [self retrieve:ZenDeviceManufactName];
}

#pragma mark - setters

-(void) setName:(NSString*)name
{
    [self store:name forKey:ZenDeviceName];
}

-(void) setLocation:(NSString*)location
{
    [self store:location forKey:ZenDeviceLocation];
}

-(void) setSublocation:(NSString*)sublocation
{
    [self store:sublocation forKey:ZenDeviceSublocation];
}

-(void) setDescription:(NSString*)description
{
    [self store:description forKey:ZenDeviceDescription];
}

-(void) setUDID:(NSString*)udid
{
    [self store:udid forKey:ZenDeviceUDID];
}

-(void) setSerialNo:(NSString*)serialno
{
    [self store:serialno forKey:ZenDeviceSerialNo];
}

-(void) setType:(NSString*)type
{
    [self store:type forKey:ZenDeviceType];
}

-(void) setModelNo:(NSString*)modelno
{
    [self store:modelno forKey:ZenDeviceModelNo];
}

-(void) setInstallDate:(NSDate*)date
{
    [self store:date forKey:ZenDeviceInstallDate];
}

-(void) setHardwareVer:(NSString*)ver
{
    [self store:ver forKey:ZenDeviceHardwareVer];
}

-(void) setFirmwareVer:(NSString*)ver
{
    [self store:ver forKey:ZenDeviceFirmwareVer];
}

-(void) setManufactName:(NSString*)name
{
    [self store:name forKey:ZenDeviceManufactName];
}
@end
