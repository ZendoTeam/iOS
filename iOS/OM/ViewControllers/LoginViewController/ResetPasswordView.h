//
//  ResetPasswordView.h
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResetPasswordView : UIView <UITextFieldDelegate>

@property (strong, nonatomic) id parentVC;
@property (weak, nonatomic) IBOutlet UIView *mainView;

@property (weak, nonatomic) IBOutlet UIButton *mComB_CANCEL;
@property (weak, nonatomic) IBOutlet UIButton *mComB_DONE;
@property (weak, nonatomic) IBOutlet UITextField *mRspT1_email;
@property (weak, nonatomic) IBOutlet UILabel *mRspL1_valid;

- (IBAction)tapDoneBtn:(UIButton *)sender;
- (IBAction)tapCancelBtn:(UIButton *)sender;
- (IBAction)tapBackground:(UITapGestureRecognizer *)sender;

- (void)loadDependency;

@end
