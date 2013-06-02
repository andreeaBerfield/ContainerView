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

/** Whether or not the view is revealed.
 YES => view is animated to the right in a FB like fashion.
 NO => view is in the initial position.
 By default this is NO. */
@property (nonatomic, assign) BOOL revealHideHomeView;

/** The instance of the model. */
+ (Model*) instance;

@end
