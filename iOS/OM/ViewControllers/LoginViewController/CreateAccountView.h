//
//  CreateAccountView.h
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateAccountView : UIView <UITextFieldDelegate>

@property (strong, nonatomic) id parentVC;
@property (weak, nonatomic) IBOutlet UIView *mainView;

@property (weak, nonatomic) IBOutlet UIButton *mComB_CANCEL;
@property (weak, nonatomic) IBOutlet UIButton *mComB_DONE;
@property (weak, nonatomic) IBOutlet UILabel *mAccL1_title;
@property (weak, nonatomic) IBOutlet UITextField *mAccT1_first;
@property (weak, nonatomic) IBOutlet UITextField *mAccT2_last;
@property (weak, nonatomic) IBOutlet UITextField *mAccT3_email;
@property (weak, nonatomic) IBOutlet UITextField *mAccT4_emailVerify;
@property (weak, nonatomic) IBOutlet UITextField *mAccT1_zipCode;
@property (weak, nonatomic) IBOutlet UILabel *mAccL2_required;


- (IBAction)tapCancelBtn:(UIButton *)sender;
- (IBAction)tapDoneBtn:(UIButton *)sender;
- (IBAction)tapBackground:(UITapGestureRecognizer *)sender;

- (void)loadDependency;

@end
