//
//  Tools.m
//  OM
//
//  Created by Andy Liu on 4/15/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "Tools.h"

@implementation Tools



// --- Check Valid Email Address
+ (BOOL) checkValidEmail:(NSString *)checkString
{
    BOOL stricterFilter = YES;
    NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
    NSString *laxString = @".+@([A-Za-z0-9]+\\.)+[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:checkString];
}

+ (BOOL)checkEmailMatch:(NSString *)firstEmail secondEmail:(NSString *)secEmail {
    return [firstEmail isEqualToString:secEmail] ? YES : NO;
}

// --- Pop Alert
+ (void) popAlertWithTitle: (NSString *) theTitle andMessage: (NSString *) theMessage{
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:theTitle
                                                     message:theMessage
                                                    delegate:nil
                                           cancelButtonTitle:@"OK"
                                           otherButtonTitles:nil, nil];
    [alert show];
}



#pragma mark --- Navigation Controller ---
+(void) changeViewController:(UIViewController *) currVC BasedOn:(NSString *) identifier{
    UINavigationController * navigationController = currVC.navigationController;
    UIStoryboard * storyBoard = currVC.storyboard;
    NSArray * navigationArray = [navigationController viewControllers];
    UIViewController * newVC;
    
    __block BOOL shouldMakeNewVC = YES;
    
    
    if ([identifier isEqualToString:@"Login"]) {
        [navigationController popToRootViewControllerAnimated:NO];
//    } else if ([identifier isEqualToString:@"Todo"]) {
//        [navigationArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
//            if ([obj isKindOfClass:[TodoViewController class]]) {
//                [navigationController popToViewController:obj animated:NO];
//                shouldMakeNewVC = NO;
//            }
//        }];
//        if (shouldMakeNewVC) {
//            newVC = [storyBoard instantiateViewControllerWithIdentifier:@"Todo"];
//            [navigationController pushViewController:newVC animated:NO];
//        }
    } else if ([identifier isEqualToString:@"back"]) {
        [navigationController popViewControllerAnimated:NO];
    } else {
        NSLog(@"ERROR - changeViewController - Utility.h");
    }
}

#pragma mark --- Animation ---
+ (void) openSlideBar:(UIView *)targetView {
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView animateWithDuration:0.4f
                     animations:^{
                         targetView.center = CGPointMake((float)(targetView.center.x + SIDEBAR_WIDTH),
                                                         targetView.center.y );
                     }
                     completion:^(BOOL finished){
                         // what to do after ?
                     }];
}
+ (void) closeSlideBar:(UIView *)targetView {
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView animateWithDuration:0.4f
                     animations:^{
                         targetView.center = CGPointMake((float)(targetView.center.x - SIDEBAR_WIDTH),
                                                         targetView.center.y );
                     }
                     completion:^(BOOL finished){
                         // what to do after ?
                     }];
}

+ (void)moveViewUp:(UIView *)targetView basedOnSizeOfSecondView:(UIView *) secondView theMainView:(UIView *) mainView{
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView animateWithDuration:0.4f
                     animations:^{
                         targetView.center = CGPointMake(targetView.center.x,
                                                         (float)(targetView.center.y - secondView.frame.size.height));
                         mainView.frame = CGRectMake(mainView.frame.origin.x,
                                                     mainView.frame.origin.y,
                                                     mainView.frame.size.width,
                                                     (float)(mainView.frame.size.height - secondView.frame.size.height));
                     }
                     completion:^(BOOL finished){
                         // what to do after ?
                     }];
}

+ (void)moveViewDown:(UIView *)targetView basedOnSizeOfSecondView:(UIView *) secondView theMainView:(UIView *) mainView{
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView animateWithDuration:0.4f
                     animations:^{
                         targetView.center = CGPointMake(targetView.center.x,
                                                         (float)(targetView.center.y + secondView.frame.size.height));
                         mainView.frame = CGRectMake(mainView.frame.origin.x,
                                                     mainView.frame.origin.y,
                                                     mainView.frame.size.width,
                                                     (float)(mainView.frame.size.height + secondView.frame.size.height));
                     }
                     completion:^(BOOL finished){
                         // what to do after ?
                     }];
}

+ (void)moveViewUp:(UIView *)targetView bySize:(int) inputSize {
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView animateWithDuration:0.4f
                     animations:^{
                         targetView.center = CGPointMake(targetView.center.x,
                                                         (float)(targetView.center.y - inputSize));
                     }
                     completion:^(BOOL finished){
                         // what to do after ?
                     }];
}
+ (void)moveViewDown:(UIView *)targetView bySize:(int) inputSize {
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView animateWithDuration:0.4f
                     animations:^{
                         targetView.center = CGPointMake(targetView.center.x,
                                                         (float)(targetView.center.y + inputSize));
                     }
                     completion:^(BOOL finished){
                         // what to do after ?
                     }];
}


@end
