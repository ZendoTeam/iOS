//
//  ZenEvent.h
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZenElement.h"

typedef enum {
    kTemp   = 1,
    kMotion = 2,
    kPower  = 3,
    kLight  = 4,
    kWater  = 5,
    kCam    = 6,
} EventType;

typedef enum {
    klow      = 1,
    kNormal   = 2,
    kHigh     = 3,
    kCritical = 4,
} EventPriority;

@interface ZenElementEvent : NSObject

@property (retain, nonatomic) NSString*     event_id;
@property (retain, nonatomic) NSString*     user_id;
@property (retain, nonatomic) NSDate*       date;
@property (retain, nonatomic) NSString*     element_serial_no;
@property (retain, nonatomic) NSData*       data;
@property (nonatomic)         EventType     type;
@property (nonatomic)         EventPriority priority;

@end

// System Messages (Push Notifs)
// Cloud Events (History)
// App Events (User)