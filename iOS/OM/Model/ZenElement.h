//
//  ZenElement.h
//  One
//
//  Created by Felipe on 3/17/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZenDevice.h"

// ZenElement inherits all values from ZenDevice
// Common values for all battery powered bluetooth devices

@interface ZenElement : ZenDevice

//Variable Values:
-(int) getBatteryLvl;
-(int) getSignalLvl;
-(int) getIntervalDevice;
-(NSString*) getBluetoothRSSI;

//Fixed Values:
-(NSString*) getBluetoothUDID;

-(void) setBatteryLvl:(int)level;
-(void) setSignalLvl:(int)level;
-(void) setIntervalDevice:(int)interval;
-(void) setBluetoothRSSI:(NSString*)rssi;

-(void) setBluetoothUDID:(NSString*)udid;

@end
