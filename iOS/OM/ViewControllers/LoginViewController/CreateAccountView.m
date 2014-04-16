//
//  CreateAccountView.m
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "CreateAccountView.h"

@implementation CreateAccountView {
    BOOL isViewUp;
}

@synthesize parentVC,mainView;
@synthesize mComB_CANCEL,mComB_DONE,mAccL1_title,mAccL2_required,mAccT1_first,mAccT1_zipCode,mAccT2_last,mAccT3_email,mAccT4_emailVerify;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)loadDependency {
    mAccT1_first.delegate   = self;
    mAccT2_last.delegate    = self;
    mAccT3_email.delegate   = self;
    mAccT1_zipCode.delegate = self;
    mAccT4_emailVerify.delegate = self;
    isViewUp = NO;
  
}


#pragma mark --- Customized Functions ---
- (BOOL) checkTextInputCpletecompletion {
    if ([mAccT1_first.text isEqualToString:@"* First Name"] ||
        [mAccT2_last.text  isEqualToString:@"* Last Name"] ||
        [mAccT3_email.text isEqualToString:@"* Email Address"] ||
        [mAccT4_emailVerify.text isEqualToString:@"* Email Address Verify"] ||
        [mAccT1_zipCode.text isEqualToString:@"* Postal Code"]
        ) {
        [Tools popAlertWithTitle:@"Fill out all required fields" andMessage:nil];
        return NO;
    } else {
        return YES;
    }
}

#pragma mark --- IBAction ---
- (IBAction)tapCancelBtn:(UIButton *)sender {
    [parentVC loadLoginView];
}

- (IBAction)tapDoneBtn:(UIButton *)sender {
    if ([self checkTextInputCpletecompletion]) {
        if ([Tools checkValidEmail:mAccT3_email.text] && [Tools checkValidEmail:mAccT4_emailVerify.text]) {
            if ([Tools checkEmailMatch:mAccT3_email.text secondEmail:mAccT4_emailVerify.text]) {
                [parentVC loadPasswordView];
            }else{
                [Tools popAlertWithTitle:@"Password doesn't match, try again" andMessage:nil];
            }
        }else{
            [Tools popAlertWithTitle:@"The Email address you entered is not valid" andMessage:nil];
        }
    }
}

#pragma mark --- UITextFieldDelegate ---
// Type Background to hide Keyboard
- (IBAction)tapBackground:(UITapGestureRecognizer *)sender {
    [mAccT1_first resignFirstResponder];
    [mAccT2_last resignFirstResponder];
    [mAccT3_email resignFirstResponder];
    [mAccT1_zipCode resignFirstResponder];
    [mAccT4_emailVerify resignFirstResponder];

    if (isViewUp) {
        [Tools moveViewDown:mainView bySize:KEYBOARD_HEIGHT];
        isViewUp = NO;
    }
}
// Type return to hide Keyboard
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [mAccT1_first resignFirstResponder];
    [mAccT2_last resignFirstResponder];
    [mAccT3_email resignFirstResponder];
    [mAccT1_zipCode resignFirstResponder];
    [mAccT4_emailVerify resignFirstResponder];
    
    if (isViewUp) {
        [Tools moveViewDown:mainView bySize:KEYBOARD_HEIGHT];
        isViewUp = NO;
    }
    
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    
    if (textField.tag == 4 || textField.tag == 5) {
        if (!isViewUp) {
            [Tools moveViewUp:mainView bySize:KEYBOARD_HEIGHT];
            isViewUp = YES;
        }
    }
    
    if (textField.tag == 1 && [textField.text isEqualToString:@"* First Name"]) {
        mAccT1_first.text = @"";
    } else if (textField.tag == 2 && [textField.text isEqualToString:@"* Last Name"]) {
        mAccT2_last.text = @"";
    } else if (textField.tag == 3 && [textField.text isEqualToString:@"* Email Address"]) {
        mAccT3_email.text = @"";
    } else if (textField.tag == 4 && [textField.text isEqualToString:@"* Email Address Verify"]) {
        mAccT4_emailVerify.text = @"";
    } else if (textField.tag == 5 && [textField.text isEqualToString:@"* Postal Code"]) {
        mAccT1_zipCode.text = @"";
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (textField.tag == 1 && [textField.text isEqualToString:@""]) {
        mAccT1_first.text = @"* First Name";
    } else if (textField.tag == 2 && [textField.text isEqualToString:@""]) {
        mAccT2_last.text = @"* Last Name";
    } else if (textField.tag == 3 && [textField.text isEqualToString:@""]) {
        mAccT3_email.text = @"* Email Address";
    } else if (textField.tag == 4 && [textField.text isEqualToString:@""]) {
        mAccT4_emailVerify.text = @"* Email Address Verify";
    } else if (textField.tag == 5 && [textField.text isEqualToString:@""]) {
        mAccT1_zipCode.text = @"* Postal Code";
    }
}


@end
