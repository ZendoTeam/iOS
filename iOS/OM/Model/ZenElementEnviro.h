//
//  ZenElementEnviro.h
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenElement.h"

// ZenElementEnviro inherits all values from ZenElement
// Common values for all Enviro Elements

@interface ZenElementEnviro : ZenElement

-(NSNumber*) getTemp;
-(NSNumber*) getTempMax;
-(NSNumber*) getTempMin;

-(NSNumber*) getHumidity;
-(NSNumber*) getHumidityMax;
-(NSNumber*) getHumidityMin;

-(NSNumber*) getPressure;
-(NSNumber*) getPressureMax;
-(NSNumber*) getPressureMin;

-(void) setTemp:(NSNumber*)val;
-(void) setTempMax:(NSNumber*)val;
-(void) setTempMin:(NSNumber*)val;

-(void) setHumidity:(NSNumber*)val;
-(void) setHumidityMax:(NSNumber*)val;
-(void) setHumidityMin:(NSNumber*)val;

-(void) setPressure:(NSNumber*)val;
-(void) setPressureMax:(NSNumber*)val;
-(void) setPressureMin:(NSNumber*)val;

@end
