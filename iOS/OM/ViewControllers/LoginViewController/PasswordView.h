//
//  PasswordView.h
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PasswordView : UIView <UITextFieldDelegate>

@property (strong, nonatomic) id parentVC;
@property (weak, nonatomic) IBOutlet UIView *mainView;

@property (weak, nonatomic) IBOutlet UIButton *mComB_CANCEL;
@property (weak, nonatomic) IBOutlet UIButton *mComB_DONE;
@property (weak, nonatomic) IBOutlet UIButton *mCom_info;
@property (weak, nonatomic) IBOutlet UILabel *mPasL1_title;
@property (weak, nonatomic) IBOutlet UITextField *mPasT1_pass1;
@property (weak, nonatomic) IBOutlet UITextField *mPasT2_pass2;
@property (weak, nonatomic) IBOutlet UIButton *mPasB1_showPass;
@property (weak, nonatomic) IBOutlet UILabel *mPasL2_msg;

- (IBAction)tapBackground:(UITapGestureRecognizer *)sender;
- (IBAction)tapDoneBtn:(UIButton *)sender;
- (IBAction)tapCancelBtn:(UIButton *)sender;

- (void)loadDependency;

@end
