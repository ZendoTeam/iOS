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
#import "ZenElementEnviro.h"
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
    
    ZenElementEvent* e1 = [ZenElementEvent new];
    [e1 setEventElementID:@"123"];
    
    ZenElementEvent* e2 = [ZenElementEvent new];
    [e2 setEventElementID:@"124"];
    
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
