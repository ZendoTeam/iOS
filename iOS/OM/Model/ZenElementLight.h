//
//  ZenElementSwitch.h
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenElement.h"

// ZenElementLight - inherits all values from ZenElement
// Common values for all Light Elements

@interface ZenElementLight : ZenElement

-(NSNumber*) getStatus;
-(NSNumber*) getLEDStatus;
-(NSNumber*) getDimLevel;
-(NSNumber*) getFaultCondition;
-(NSNumber*) getVoltThreshold;
-(NSNumber*) getPwrThreshold;

-(void) setStatus:(NSNumber*)status;
-(void) setLEDStatus:(NSNumber*)status;
-(void) setDimLevel:(NSNumber*)level;
-(void) setFaultCondition:(NSNumber*)value;
-(void) setVoltThreshold:(NSNumber*)value;
-(void) setPwrThreshold:(NSNumber*)value;

@end