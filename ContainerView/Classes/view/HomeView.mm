//
//  HomeView.mm
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//

#import "HomeView.h"
#import "Model.h"
#import "SettingsCommands.h"

#define SPACE_FROM_LEFT_WHEN_REVEALED 260

@interface HomeView()

@end


@implementation HomeView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor redColor];
        
        // add reveal/hide buton
        UIButton* revealHideButton = [[UIButton alloc] initWithFrame:CGRectMake(5, 20, 80, 40)];
        [revealHideButton setTitle:@"[--]" forState:UIControlStateNormal];
        [revealHideButton setTintColor:[UIColor blueColor]];
        [revealHideButton addTarget:self action:@selector(revealHideAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:revealHideButton];
        
        // add a label
        UILabel* homesLabel = [[UILabel alloc] initWithFrame:CGRectMake(120, 20, 120, 40)];
        [homesLabel setText:@"Home page"];
        [homesLabel setTextColor:[UIColor blueColor]];
        homesLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:homesLabel];
        
        // add observers
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
     Register self to receive change notifications for the "instance.revealHideHomeView" property of
     the 'Model' object and specify that both the old and new values of "instance.revealHideHomeView"
     should be provided in the observe... method.*/
    [Model addObserver:self forKeyPath:@"instance.revealHideHomeView"
               options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld)
               context:nil];
}

- (void) removeObservers
{
    [self removeObserver:self forKeyPath:@"instance.revealHideHomeView"];
}

- (void) observeValueForKeyPath:(NSString*) keyPath ofObject:(id) object change:(NSDictionary*) change context:(void*) context
{
    if ([keyPath isEqualToString:@"instance.revealHideHomeView"])
	{
        [UIView animateWithDuration:0.2
                         animations:^{
                             CGRect frame = self.frame;
                             frame.origin.x = Model.instance.revealHideHomeView ? SPACE_FROM_LEFT_WHEN_REVEALED : 0;
                             self.frame = frame;
                         } completion:^(BOOL finished) {
                         }];
    }
}

- (void) revealHideAction:(id) sender
{
    [SettingsCommands revealHideHomeView];
}

@end
