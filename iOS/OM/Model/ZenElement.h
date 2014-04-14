//
//  ZenElement.h
//  One
//
//  Created by Felipe on 3/17/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenDevice.h"

// BATTERY POWERED DEVICES

@interface ZenElement : ZenDevice

@property (nonatomic)         NSInteger battery_lvl;
@property (nonatomic)         NSInteger signalLvl;


@property (retain, nonatomic) NSString* bluetooth_udid;
@property (retain, nonatomic) NSString* bluetooth_rssi;
@property (nonatomic)         CGFloat   intervalDevice;

@end
