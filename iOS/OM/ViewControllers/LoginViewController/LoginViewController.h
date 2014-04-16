//
//  LoginViewController.h
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginView.h"
#import "CreateAccountView.h"
#import "PasswordView.h"
#import "ValidationPendingView.h"
#import "ResetPasswordView.h"

@interface LoginViewController : UIViewController



@property (weak, nonatomic) IBOutlet UIView *mainView;

- (void) loadLoginView;
-(void) loadCreateAccountView;
-(void) loadPasswordView;
-(void) loadResetPasswordView;
-(void) loadValidationView;



@end
