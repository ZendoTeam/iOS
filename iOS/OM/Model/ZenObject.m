//
//  ZenObject.m
//  Zendo
//
//  Created by Felipe on 4/16/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenObject.h"

@interface ZenObject ()
    @property (nonatomic, strong ) NSMutableDictionary* storage;
@end

@implementation ZenObject

-(id)init
{
    self.storage = [NSMutableDictionary new];
    return self;
}

#pragma mark -

- (void) store:(id)object forKey:(NSString*)key
{
    if((object!= nil) && (key!= nil))
        [self.storage setObject:object forKey:key];
}

-(id) retrieve:(id)key
{
    return [self.storage objectForKey:key];
}

- (id) initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        
        self.storage = [coder decodeObjectForKey:@"storage"];
    }
    return self;
}


- (void) encodeWithCoder:(NSCoder *)coder
{
    //    [super encodeWithCoder:coder];
    
    [coder encodeObject:self.storage forKey:@"storage"];
}

@end

