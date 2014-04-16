//
//  LoginView.h
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginView : UIView <UITextFieldDelegate>

@property (strong, nonatomic) id parentVC;
@property (weak, nonatomic) IBOutlet UIView *mainView;

@property (weak, nonatomic) IBOutlet UITextField *mLogT1_email;
@property (weak, nonatomic) IBOutlet UITextField *mLogT2_pass;
@property (weak, nonatomic) IBOutlet UIButton *mLogB1_logIn;
@property (weak, nonatomic) IBOutlet UIButton *mLogB2_showPass;
@property (weak, nonatomic) IBOutlet UIButton *mLogB3_resetPass;
@property (weak, nonatomic) IBOutlet UIButton *mLogB4_newAccount;
@property (weak, nonatomic) IBOutlet UIButton *mLogB5_help;

- (IBAction)tapLogInBtn:(UIButton *)sender;
- (IBAction)tapNewAccountBtn:(UIButton *)sender;
- (IBAction)tapHelpCenterBtn:(UIButton *)sender;
- (IBAction)tapShowPassBtn:(UIButton *)sender;
- (IBAction)tapForgotPassBtn:(UIButton *)sender;

- (IBAction)tapBackground:(UITapGestureRecognizer *)sender;

- (void)loadDependency;

@end
