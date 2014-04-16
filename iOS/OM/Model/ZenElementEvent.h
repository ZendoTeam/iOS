//
//  ZenEvent.h
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenObject.h"

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

@interface ZenElementEvent : ZenObject


-(NSString*) getEventID;
-(NSDate*)   getEventDate;
-(NSString*) getEventUserID;
-(NSString*) getEventElementID;
-(NSData*)   getEventData;
-(NSNumber*) getEventType;
-(NSNumber*) getEventPriority;

-(void) setEventID:(NSString*)value;
-(void) setEventDate:(NSDate*)date;
-(void) setEventUserID:(NSString*)value;
-(void) setEventElementID:(NSString*)value;
-(void) setEventData:(NSData*)data;
-(void) setEventType:(NSNumber*)type;
-(void) setEventPriority:(NSNumber*)priority;

@end
