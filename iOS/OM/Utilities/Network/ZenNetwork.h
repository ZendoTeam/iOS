//
//  ZenNetwork.h
//  Sessions
//
//  Created by Felipe on 3/12/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZenNetwork : NSObject

- (id)initWithCaller: (id)theCaller;
- (void)downloadTaskWithURLstring: (NSString*) url taskName:(NSString*)theTaskName;

- (void)cancelDownload;
- (void)resumeDownload;

@end
