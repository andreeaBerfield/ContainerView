//
//  LoginCommands.m
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//

#import "LoginCommands.h"
#import "Model.h"


@implementation LoginCommands

+(void) login:(BOOL) loggedIn
{
    Model.instance.isUserLoggedIn = loggedIn;
}

@end
