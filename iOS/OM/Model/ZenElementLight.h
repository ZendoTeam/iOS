//
//  ZenElementSwitch.h
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenElement.h"

@interface ZenElementLight : ZenElement

@property (nonatomic) BOOL      state; // on/off

@property (nonatomic) BOOL      ledStatus;
@property (nonatomic) CGFloat   dimLevel;

@property (nonatomic) CGFloat   faultCondition; //(ok, fault1...4)
@property (nonatomic) CGFloat   voltThreshold;
@property (nonatomic) CGFloat   pwrThreshold;

-(id)init;

@end