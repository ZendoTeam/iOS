//
//  ValidationPendingView.h
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ValidationPendingView : UIView

@property (strong, nonatomic) id parentVC;
@property (weak, nonatomic) IBOutlet UIView *mainView;

@property (weak, nonatomic) IBOutlet UIButton *mComB_CANCEL;
@property (weak, nonatomic) IBOutlet UILabel *mValL2_msg;
@property (weak, nonatomic) IBOutlet UIButton *mValB1_resendEmail;
@property (weak, nonatomic) IBOutlet UIButton *mCom_info;

- (IBAction)tapResendEmailBtn:(UIButton *)sender;
- (IBAction)tapCancelBtn:(UIButton *)sender;

- (void)loadDependency;

@end
