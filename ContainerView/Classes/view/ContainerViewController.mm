//
//  ContainerViewController.m
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//

#import "ContainerViewController.h"
#import "ContainerView.h"
#import "Model.h"
#import "LoginViewController.h"
#import "HomeViewController.h"


@interface ContainerViewController ()

@property (nonatomic, strong) ContainerView* containerView;
@property (nonatomic, strong) LoginViewController* loginViewController;
@property (nonatomic, strong) HomeViewController* homeViewController;

@end


@implementation ContainerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.containerView = [[ContainerView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        self.view = self.containerView;
        
        // if you are logged in go to the home page, other wise to the log in page
        if (Model.instance.isUserLoggedIn)
        {
            [self transitionToTheHomeViewController];
        }
        else
        {
            [self transitionToTheLoginViewController];
        }
        
        [self addObservers];
    }
    
    return self;
}

- (void) dealloc
{
    [self removeObservers];
}

- (void) addObservers
{
    /*
     Register self to receive change notifications for the "instance.isUserLoggedIn" property of
     the 'Model' object and specify that both the old and new values of "instance.isUserLoggedIn"
     should be provided in the observe... method.*/
     [Model addObserver:self forKeyPath:@"instance.isUserLoggedIn"
               options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld)
               context:nil];
}

- (void) removeObservers
{
    [self removeObserver:self forKeyPath:@"instance.isUserLoggedIn"];
}

- (void) observeValueForKeyPath:(NSString*) keyPath ofObject:(id) object change:(NSDictionary*) change context:(void*) context
{
    if ([keyPath isEqualToString:@"instance.isUserLoggedIn"])
	{
        // if you are logged in go to the home page, other wise to the log in page
        if (Model.instance.isUserLoggedIn)
        {
            [self transitionToTheHomeViewController];
        }
        else
        {
            [self transitionToTheLoginViewController];
        }
    }
}

- (void) transitionToTheLoginViewController
{
    if (!self.loginViewController)
    {
        self.loginViewController = [[LoginViewController alloc] init];
    }

    [self.view addSubview:self.loginViewController.view];
    [self addChildViewController:self.loginViewController];
    [self.loginViewController didMoveToParentViewController:self];
}

- (void) transitionToTheHomeViewController
{
    if (!self.homeViewController)
    {
        self.homeViewController = [[HomeViewController alloc] init];
    }

    [self.view addSubview:self.homeViewController.view];
    [self addChildViewController:self.homeViewController];
    [self.homeViewController didMoveToParentViewController:self];
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
