//
//  CreateAccountViewController.m
//  OM
//
//  Created by Felipe on 3/11/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doValidation:(id)sender
{
}

- (IBAction)unwindToCreateAccount:(UIStoryboardSegue*)unwindSegue;
{
}

@end
