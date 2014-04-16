//
//  PasswordView.m
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "PasswordView.h"

@implementation PasswordView {
    
}

@synthesize parentVC,mainView;
@synthesize mComB_DONE,mComB_CANCEL,mCom_info,mPasL1_title,mPasT1_pass1,mPasT2_pass2,mPasB1_showPass,mPasL2_msg;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)loadDependency {
    mPasT1_pass1.delegate = self;
    mPasT2_pass2.delegate = self;
}

- (void) resetTextField{
    [mPasT1_pass1 resignFirstResponder];
    [mPasT2_pass2 resignFirstResponder];
    mPasT1_pass1.secureTextEntry = NO;
    mPasT2_pass2.secureTextEntry = NO;
    mPasT1_pass1.text = @"Password";
    mPasT2_pass2.text = @"Verify Password";
}


- (BOOL) checkTextInputCpletecompletion {
    if ([mPasT1_pass1.text isEqualToString:@"Password"] ||
        [mPasT2_pass2.text isEqualToString:@"Verify Password"]) {
        [Tools popAlertWithTitle:@"Please choose a password" andMessage:nil];
        return NO;
    } else {
        return YES;
    }
}

#pragma mark --- IBAction ---
- (IBAction)tapDoneBtn:(UIButton *)sender {
    if ([self checkTextInputCpletecompletion]) {
        if ([mPasT1_pass1.text isEqualToString:mPasT2_pass2.text]) {
            [parentVC loadValidationView];
        } else {
            [Tools popAlertWithTitle:@"Password doesn't match, try again" andMessage:nil];
        }
        [self resetTextField];
    }
}

- (IBAction)tapCancelBtn:(UIButton *)sender {
    [parentVC loadLoginView];
}

#pragma mark --- UITextFieldDelegate ---
// Type Background to hide Keyboard
- (IBAction)tapBackground:(UITapGestureRecognizer *)sender {
    [mPasT1_pass1 resignFirstResponder];
    [mPasT2_pass2 resignFirstResponder];
}

//Type return to hide Keyboard
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [mPasT1_pass1 resignFirstResponder];
    [mPasT2_pass2 resignFirstResponder];
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    if (textField.tag == 1 && [textField.text isEqualToString:@"Password"]) {
        mPasT1_pass1.text = @"";
        mPasT1_pass1.secureTextEntry = YES;
    }
    if (textField.tag == 2 && [textField.text isEqualToString:@"Verify Password"]) {
        mPasT2_pass2.text = @"";
        mPasT2_pass2.secureTextEntry = YES;
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (textField.tag == 1 && [textField.text isEqualToString:@""]) {
        mPasT1_pass1.secureTextEntry = NO;
        mPasT1_pass1.text = @"Password";
    }
    if (textField.tag == 2 && [textField.text isEqualToString:@""]) {
        mPasT2_pass2.secureTextEntry = NO;
        mPasT2_pass2.text = @"Verify Password";
    }
}
@end
