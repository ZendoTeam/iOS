//
//  ZenNetworkDelegate.h
//  Sessions
//
//  Created by Felipe on 3/13/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ZenNetworkDelegate <NSObject>

@required
- (void)progressUpdate:(float)progress;
- (void)downloadComplete:(NSData *)data;

@end