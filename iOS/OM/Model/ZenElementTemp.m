//
//  ZenElementTemp.m
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenElementTemp.h"

@implementation ZenElementTemp

@synthesize temp = _temp;
@synthesize maxTemp = _maxTemp;
@synthesize minTemp = _minTemp;

@synthesize humidity = _humidity;
@synthesize maxHumidity = _maxHumidity;
@synthesize minHumidity = _minHumidity;

@synthesize pressure = _pressure;
@synthesize maxPressureThreshold = _maxPressureThreshold;
@synthesize minPressure = _minPressure;


-(id)init {
    
    self = [super init];
    
    return self;
}
@end
