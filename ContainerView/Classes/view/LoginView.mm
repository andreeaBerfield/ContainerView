//
//  LoginView.mm
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//

#import "LoginView.h"
#import "LoginCommands.h"


@implementation LoginView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor greenColor];

        UIButton* loginButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 20, 80, 40)];
        [loginButton setTitle:@"LogIn" forState:UIControlStateNormal];
        [loginButton setTintColor:[UIColor blueColor]];
        [loginButton addTarget:self action:@selector(loginAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:loginButton];
    }
    
    return self;
}

- (void) loginAction:(id) sender
{
    NSLog(@"Log in btn pressed");
    [LoginCommands login:YES];
}

@end
