//
//  ZenElementMotion.h
//  One
//
//  Created by Felipe on 3/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenElement.h"

typedef enum {
    kOpen       = 1,
    kClose      = 2,
    kUp         = 3,
    kDown       = 4,
    kShock      = 5,
    KFlip       = 6,
    kDoubleTap  = 7,
    kTripleTap  = 8,
} MotionEvent;


@interface ZenElementMotion : ZenElement

@property (nonatomic) MotionEvent type;

@end
