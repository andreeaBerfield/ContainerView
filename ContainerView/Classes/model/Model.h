//
//  Model.h
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//


@interface Model : NSObject

/** Is the user logged in or not. */
@property (nonatomic, assign) BOOL isUserLoggedIn;

/** The instance of the model. */
+ (Model*) instance;

@end
