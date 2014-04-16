//
//  ZenEvent.m
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenElementEvent.h"

// ZenElementEvent - Base class for all Events
// Common values for Events

//Variable Values:
NSString* const ZenEventID              = @"evID";
NSString* const ZenEventDate            = @"evDate";
NSString* const ZenEventUserID          = @"evUserID";
NSString* const ZenEventElementID       = @"evElementID";
NSString* const ZenEventData            = @"evData";
NSString* const ZenEventType            = @"evType";
NSString* const ZenEventPriority        = @"evPriority";

@implementation ZenElementEvent

#pragma mark - getters

-(NSString*) getEventID
{
    return [self retrieve:ZenEventID];
}

-(NSDate*) getEventDate
{
    return [self retrieve:ZenEventDate];
}

-(NSString*) getEventUserID
{
    return [self retrieve:ZenEventUserID];
}

-(NSString*) getEventElementID
{
    return [self retrieve:ZenEventElementID];
}

-(NSData*) getEventData
{
    return [self retrieve:ZenEventData];
}

-(NSNumber*) getEventType
{
    return [self retrieve:ZenEventType];
}

-(NSNumber*) getEventPriority
{
    return [self retrieve:ZenEventPriority];
}

#pragma mark - setters

-(void) setEventID:(NSString*)value
{
    [self store:value forKey:ZenEventID];
}

-(void) setEventDate:(NSDate*)date
{
    [self store:date forKey:ZenEventDate];
}

-(void) setEventUserID:(NSString*)value
{
    [self store:value forKey:ZenEventUserID];
}

-(void) setEventElementID:(NSString*)value
{
    [self store:value forKey:ZenEventElementID];
}

-(void) setEventData:(NSData*)data
{
    [self store:data forKey:ZenEventData];
}

-(void) setEventType:(NSNumber*)type
{
    [self store:type forKey:ZenEventType];
}

-(void) setEventPriority:(NSNumber*)priority
{
    [self store:priority forKey:ZenEventPriority];
}

@end
