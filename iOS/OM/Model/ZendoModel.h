//
//  ZendoModel.h
//  One
//
//  Created by Felipe on 3/5/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZendoModel : NSObject

-(NSInteger) menuItemCount;
-(NSString*) menuItemAtIndex:(NSInteger)index;

-(void)load;


+ (instancetype)sharedStore; //singleton

@end
