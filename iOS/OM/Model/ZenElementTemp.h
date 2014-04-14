//
//  ZenElementTemp.h
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenElement.h"

@interface ZenElementTemp : ZenElement

@property (nonatomic) CGFloat temp;
@property (nonatomic) CGFloat maxTemp;
@property (nonatomic) CGFloat minTemp;

@property (nonatomic) CGFloat humidity;
@property (nonatomic) CGFloat maxHumidity;
@property (nonatomic) CGFloat minHumidity;

@property (nonatomic) CGFloat pressure;
@property (nonatomic) CGFloat maxPressureThreshold;
@property (nonatomic) CGFloat minPressure;

@end
