//
//  Tools.h
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginViewController.h"

@interface Tools : NSObject

+ (BOOL) checkValidEmail:(NSString *)checkString;
+ (BOOL)checkEmailMatch:(NSString *)firstEmail secondEmail:(NSString *)secEmail;

+ (void) popAlertWithTitle: (NSString *) theTitle andMessage: (NSString *) theMessage;

+ (void) changeViewController:(UIViewController *) currVC BasedOn:(NSString *) identifier;

+ (void) openSlideBar:(UIView *)targetView;
+ (void) closeSlideBar:(UIView *)targetView;
+ (void)moveViewUp:(UIView *)targetView basedOnSizeOfSecondView:(UIView *) secondView theMainView:(UIView *) mainView;
+ (void)moveViewDown:(UIView *)targetView basedOnSizeOfSecondView:(UIView *) secondView theMainView:(UIView *) mainView;

+ (void)moveViewUp:(UIView *)targetView bySize:(int) inputSize;
+ (void)moveViewDown:(UIView *)targetView bySize:(int) inputSize;

@end
