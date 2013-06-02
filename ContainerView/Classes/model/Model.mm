//
//  Model.mm
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//

#import "Model.h"

static Model* _instance = nil;

@implementation Model

+ (Model*) instance
{
    if (!_instance)
    {
        _instance = [[Model alloc] init];
        _instance.isUserLoggedIn = NO;
    }
    
    return _instance;
}

@end
