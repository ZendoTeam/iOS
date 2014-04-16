//
//  ResetPasswordView.m
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ResetPasswordView.h"

@implementation ResetPasswordView

@synthesize parentVC,mainView;
@synthesize mComB_CANCEL,mComB_DONE,mRspL1_valid,mRspT1_email;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)loadDependency {
    mRspT1_email.delegate = self;
}


- (IBAction)tapDoneBtn:(UIButton *)sender {
    if ([Tools checkValidEmail:mRspT1_email.text]) {
        NSLog(@"Valide Email");
    }else{
        [Tools popAlertWithTitle:@"The Email address you entered is not valid" andMessage:nil];
    }
}
- (IBAction)tapCancelBtn:(UIButton *)sender {
    [parentVC loadLoginView];
}


#pragma mark --- UITextFieldDelegate ---
// Type Background to hide Keyboard
- (IBAction)tapBackground:(UITapGestureRecognizer *)sender {
    [mRspT1_email resignFirstResponder];
}

//Type return to hide Keyboard
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [mRspT1_email resignFirstResponder];
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    if ([mRspT1_email.text isEqualToString:@"Email Address"]) {
        mRspT1_email.text = @"";
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([mRspT1_email.text isEqualToString:@""]) {
        mRspT1_email.text = @"Email Address";
    }
}

@end
