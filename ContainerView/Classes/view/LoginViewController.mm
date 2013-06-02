//
//  LoginViewController.m
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginView.h"


@interface LoginViewController ()

@property (nonatomic, strong) LoginView* loginView;

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.loginView = [[LoginView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        self.view = self.loginView;
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

@end
