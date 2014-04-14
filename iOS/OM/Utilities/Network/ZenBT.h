//
//  ZenBT.m
//  Bluetooth connections
//
//  Created by Felipe on 3/19/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>

@interface ZenBT : NSObject <CBCentralManagerDelegate,CBPeripheralDelegate>

@property (strong,nonatomic) CBCentralManager *manager;

@property (strong,nonatomic) NSMutableArray *peripherals;

@property (strong,nonatomic) NSMutableArray *elements;

@property (weak,nonatomic) id caller;

- (void)initWithCaller: (id)theCaller;

+ (instancetype)sharedStore; //singleton

-(void)startScanning;

@end
