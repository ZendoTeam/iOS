//
//  ValidationPendingView.m
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ValidationPendingView.h"

@implementation ValidationPendingView

@synthesize parentVC,mainView;
@synthesize mCom_info,mComB_CANCEL,mValB1_resendEmail,mValL2_msg;

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)loadDependency {
}

- (IBAction)tapResendEmailBtn:(UIButton *)sender {
}

- (IBAction)tapCancelBtn:(UIButton *)sender {
    [parentVC loadLoginView];
}


@end
