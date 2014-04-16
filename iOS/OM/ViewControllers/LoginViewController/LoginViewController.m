//
//  LoginViewController.m
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController (){
    LoginView * loginView;
    CreateAccountView * accountView;
    PasswordView * passView;
    ResetPasswordView * resetPassView;
    ValidationPendingView * validationView;
}

@end

@implementation LoginViewController

@synthesize mainView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadLoginView];
//    [self loadCreateAccountView];
//    [self loadPasswordView];
//    [self loadResetPasswordView];
//    [self loadValidationView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



- (void) loadLoginView {
    loginView = [[LoginView alloc] init];
    loginView.parentVC = self;
    [[NSBundle mainBundle] loadNibNamed:@"LoginView" owner:loginView options:nil];
    loginView.mainView.frame = self.mainView.frame;
    [mainView addSubview:loginView.mainView];
    [loginView loadDependency];
}

-(void) loadCreateAccountView {
    accountView = [[CreateAccountView alloc] init];
    accountView.parentVC = self;
    [[NSBundle mainBundle] loadNibNamed:@"CreateAccountView" owner:accountView options:nil];
    accountView.mainView.frame = self.mainView.frame;
    [mainView addSubview:accountView.mainView];
    [accountView loadDependency];
}

-(void) loadPasswordView {
    passView = [[PasswordView alloc] init];
    passView.parentVC = self;
    [[NSBundle mainBundle] loadNibNamed:@"PasswordView" owner:passView options:nil];
    passView.mainView.frame = self.mainView.frame;
    [mainView addSubview:passView.mainView];
    [passView loadDependency];
}

-(void) loadResetPasswordView {
    resetPassView = [[ResetPasswordView alloc] init];
    resetPassView.parentVC = self;
    [[NSBundle mainBundle] loadNibNamed:@"ResetPasswordView" owner:resetPassView options:nil];
    resetPassView.mainView.frame = self.mainView.frame;
    [mainView addSubview:resetPassView.mainView];
    [resetPassView loadDependency];
}

-(void) loadValidationView {
    validationView = [[ValidationPendingView alloc] init];
    validationView.parentVC = self;
    [[NSBundle mainBundle] loadNibNamed:@"ValidationPendingView" owner:validationView options:nil];
    validationView.mainView.frame = self.mainView.frame;
    [mainView addSubview:validationView.mainView];
    [validationView loadDependency];
}




@end
