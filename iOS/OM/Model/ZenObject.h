//
//  ZenObject.h
//  Zendo
//
//  Created by Felipe on 4/16/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZenObject : NSObject <NSCoding>

-(id) init;

-(void) store:(id)object forKey:(NSString*)key;
-(id) retrieve:(id)key;

@end
