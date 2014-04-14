//
//  ZenDevice
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenDevice.h"

@implementation ZenDevice

-(id)init {
    
    self.uuidString = @"uuid string";
    self.name = @"name";
    self.location = @"location";
    self.sublocation = @"room";
    self.description = @"description";
    self.image = nil;
    
    return self;
}

@end
