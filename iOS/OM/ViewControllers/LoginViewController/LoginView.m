//
//  LoginView.m
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

@synthesize parentVC,mainView;
@synthesize mLogT1_email,mLogT2_pass,mLogB1_logIn,mLogB2_showPass,mLogB3_resetPass,mLogB4_newAccount,mLogB5_help;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)loadDependency {
    mLogT2_pass.delegate = mLogT1_email.delegate = self;
}

#pragma mark --- Customized Functions ---
- (BOOL) checkTextInputCpletecompletion {
    if ([mLogT1_email.text isEqualToString:@"Email"] && [mLogT2_pass.text isEqualToString:@"Password"]) {
        [Tools popAlertWithTitle:@"Fill out your email and password" andMessage:nil];
        return NO;
    }else if ([mLogT1_email.text isEqualToString:@"Email"]) {
        [Tools popAlertWithTitle:@"Fill out your email" andMessage:nil];
        return NO;
    } else if ([mLogT2_pass.text isEqualToString:@"Password"]){
        [Tools popAlertWithTitle:@"Fill out your password" andMessage:nil];
        return NO;
    } else {
        return YES;
    }
}


#pragma mark --- IBAction ---
- (IBAction)tapLogInBtn:(UIButton *)sender {
    if ([self checkTextInputCpletecompletion]) {
        if ([Tools checkValidEmail:mLogT1_email.text]) {
            NSLog(@"Valide Email");
        }else{
            [Tools popAlertWithTitle:@"The Email address you entered is not valid" andMessage:nil];
        }
    }
}

- (IBAction)tapNewAccountBtn:(UIButton *)sender {
    [parentVC loadCreateAccountView];
}

- (IBAction)tapHelpCenterBtn:(UIButton *)sender {
}

- (IBAction)tapShowPassBtn:(UIButton *)sender {
    if (mLogB2_showPass.selected == NO) {
        mLogB2_showPass.selected = YES;
        mLogT2_pass.secureTextEntry = NO;
    } else {
        mLogB2_showPass.selected = NO;
        mLogT2_pass.secureTextEntry = YES;
    }
}

- (IBAction)tapForgotPassBtn:(UIButton *)sender {
    [parentVC loadResetPasswordView];
}

#pragma mark --- UITextFieldDelegate ---
// Type Background to hide Keyboard
- (IBAction)tapBackground:(UITapGestureRecognizer *)sender {
    [mLogT1_email resignFirstResponder];
    [mLogT2_pass resignFirstResponder];
}
// Type return to hide Keyboard
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [mLogT1_email resignFirstResponder];
    [mLogT2_pass resignFirstResponder];
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    if (textField.tag == 1 && [textField.text isEqualToString:@"Email"]) {
        mLogT1_email.text = @"";
    }
    if (textField.tag == 2 && [textField.text isEqualToString:@"Password"]) {
        mLogT2_pass.text = @"";
        mLogT2_pass.secureTextEntry = YES;
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (textField.tag == 1 && [textField.text isEqualToString:@""]) {
        mLogT1_email.text = @"Email";
    }
    if (textField.tag == 2 && [textField.text isEqualToString:@""]) {
        mLogT2_pass.text = @"Password";
        mLogT2_pass.secureTextEntry = NO;
    }
}

@end
