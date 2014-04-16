//
//  ZenElementWater.h
//  One
//
//  Created by Felipe on 3/17/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenElement.h"

// ZenElementWater - inherits all values from ZenElement
// Common values for all Water Elements

@interface ZenElementWater : ZenElement

-(NSNumber*) getState;
-(NSNumber*) getTemp;
-(NSNumber*) getHumidity;

-(void) setState:(NSNumber*)val;
-(void) setTemp:(NSNumber*)val;
-(void) setHumidity:(NSNumber*)val;

@end
