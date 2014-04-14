//
//  ZenEventTable.h
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZenElementEvent.h"

@interface ZenEventTable : NSObject

-(NSInteger) count;
-(NSString*) eventAtIndex:(NSInteger)index;

-(void) addEvent:(id)event;
-(void) logEvents;

-(void) readCloudEventsWithFilter:(NSString*)query;
-(void) writeCloudEventsWithFilter:(NSString*)query;

@end
