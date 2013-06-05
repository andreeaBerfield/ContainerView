//
//  LoginCommands.mm
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//

#import "ContainerViewTests.h"
#import "LoginCommands.h"
#import "Model.h"

@interface LoginCommandTests : ContainerViewTests

@end


@implementation LoginCommandTests

- (void) testLogin
{
    [LoginCommands login:YES];
    STAssertTrue(Model.instance.isUserLoggedIn, @"Model.instance.isUserLoggedIn should be true");
}

@end
