//
//  ZendoModel.m
//  One
//
//  Created by Felipe on 3/5/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZendoModel.h"
#import "ZenElementLight.h"
#import "ZenElementWater.h"
#import "ZenElementTemp.h"
#import "ZenElementMotion.h"
#import "ZenEventTable.h"
#import "ZenElementEvent.h"

@implementation ZendoModel

ZenEventTable* t;

-(id)init
{
    self = [super init];
    if(self){
        [self load];
    }
    return self;
}

//create singleton instance
+(instancetype) sharedStore
{
    static dispatch_once_t once;
    static id _instance;
    dispatch_once(&once, ^{
        _instance = [[[self class] alloc] init];
    });
    
    [self load];
    
    return _instance;
}

-(void)load
{
    //
    // Elements
    //
    
    ZenElementTemp* s1 = [ZenElementTemp new];
    s1.temp = 75.5;
    s1.name = @"Temp Sensor #1";
    
    ZenElementTemp* s2 = [ZenElementTemp new];
    s2.temp = 76.5;
    s2.name = @"Temp Sensor #2";
    
    ZenElementMotion* s3 = [ZenElementMotion new];
    s3.type = 5;
    s3.name = @"Motion Sensor #1";

    //
    // Events
    //
    
    ZenElementEvent* e1 = [ZenElementEvent new];
    e1.element_serial_no = @"123";
    
    ZenElementEvent* e2 = [ZenElementEvent new];
    e2.element_serial_no = @"124";
    
    //
    // Table
    //
    
    t = [ZenEventTable new];
    [t addEvent:e1];
    [t addEvent:e2];
    
    [t logEvents];
}

-(NSInteger) menuItemCount
{
    return [t count];
}

-(NSString*) menuItemAtIndex:(NSInteger)index
{
    return [t eventAtIndex:index];
}

-(void) readCloudEventsWithFilter:(NSString*)query{
    
}

-(void) writeCloudEventsWithFilter:(NSString*)query{
    
}


@end
