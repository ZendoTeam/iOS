//
//  ZenSampleView.m
//  OM
//
//  Created by Felipe on 4/14/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenSampleView.h"
#import "ZenAppDelegate.h"

@implementation ZenSampleView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

+ (id)loadFromNib
{
    return [[[NSBundle mainBundle] loadNibNamed:([@"ZenSampleView" stringByAppendingString:([ZenAppDelegate shared].iPad?@"Pad":@"Phone")]) owner:nil options:nil] objectAtIndex:0];
}


- (void)awakeFromNib
{
    self.backgroundColor = [UIColor clearColor];
}


@end
