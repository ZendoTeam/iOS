//
//  ZenEventTable.m
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenElementEvent.h"
#import "ZenEventTable.h"
#import "ZenElementTemp.h"
#import "ZenElementMotion.h"

@interface ZenEventTable() {

    NSMutableArray* eventTable;
}
@end


@implementation ZenEventTable

-(id)init{
    
    ZenEventTable* s = [super init];
    
    eventTable = [NSMutableArray new];

    return s;
}
                  
-(void) addEvent:(id)event{
    
    [eventTable addObject:event];
}

-(void) logEvents{
/*
    for(ZenElementEvent *event in eventTable){
        
        if([event.element isKindOfClass:[ZenElementTemp class]])
            NSLog(@"Temp: %f",((ZenElementTemp*) event.element).temp);
         
        if([event.element isKindOfClass:[ZenElementMotion class]])
            NSLog(@"Motion: %i",((ZenElementMotion*) event.element).type);
    }
*/
}


-(NSInteger) count{
    return eventTable.count;
}

-(NSString*) eventAtIndex:(NSInteger)index
{
    ZenElementEvent* e = [eventTable objectAtIndex:index];
    
    return  e.element_serial_no;
}

-(void) readCloudEventsWithFilter:(NSString*)query{}
-(void) writeCloudEventsWithFilter:(NSString*)query{}

@end
