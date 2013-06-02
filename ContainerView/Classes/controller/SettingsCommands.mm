//
//  SettingsCommands.m
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//

#import "SettingsCommands.h"
#import "Model.h"


@implementation SettingsCommands

+(void) revealHideHomeView
{
    Model.instance.revealHideHomeView = !Model.instance.revealHideHomeView;
}

@end
