//
//  ZenElement.h
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenObject.h"

// ZenDevice - Base Class
// Holds common values for all devices

@interface ZenDevice : ZenObject

//Variable Values:
-(NSString*) getName;
-(NSString*) getLocation;
-(NSString*) getSublocation;
-(NSString*) getDescription;

//Fixed Values:
-(NSString*) getUDID;
-(NSString*) getSerialNo;
-(NSString*) getType;
-(NSString*) getModelNo;
-(NSDate*)   getInstallDate;
-(NSString*) getHardwareVer;
-(NSString*) getFirmwareVer;
-(NSString*) getManufactName;

-(void) setName:(NSString*)name;
-(void) setLocation:(NSString*)location;
-(void) setSublocation:(NSString*)sublocation;
-(void) setDescription:(NSString*)description;

-(void) setUDID:(NSString*)udid;
-(void) setSerialNo:(NSString*)serialno;
-(void) setType:(NSString*)type;
-(void) setModelNo:(NSString*)modelno;
-(void) setInstallDate:(NSDate*)date;
-(void) setHardwareVer:(NSString*)ver;
-(void) setFirmwareVer:(NSString*)ver;
-(void) setManufactName:(NSString*)name;

@end
