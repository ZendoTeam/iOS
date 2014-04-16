//
//  ZenSmartPlug.h
//  One
//
//  Created by Felipe on 3/17/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenHub.h"

// ZenSmartPlug - inherits all values from ZenHub
// For Zendo Smart Plugs

@interface ZenSmartPlug : ZenHub


-(NSNumber*) getDimming;
-(NSNumber*) getPower;
-(NSNumber*) getVoltage;

-(void) setDimming:(NSNumber*)value;
-(void) setPower:(NSNumber*)power;
-(void) setVoltage:(NSNumber*)voltage;

@end
