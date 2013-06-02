//
//  HomeView.mm
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//

#import "HomeView.h"

#define SPACE_FROM_LEFT_WHEN_REVEALED 260

@interface HomeView()

/** Whether or not the view is revealed. 
    YES => view is animated to the right in a FB like fashion.
    NO => view is in the initial position.
    By default this is NO. */
@property (nonatomic, assign) BOOL isRevealed;

@end


@implementation HomeView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor redColor];
        // initially the view is not revealed
        self.isRevealed = NO;
        
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
        
    }
    
    return self;
}

- (void) revealHideAction:(id) sender
{
    self.isRevealed = !self.isRevealed;
    [UIView animateWithDuration:0.2
                     animations:^{
                         CGRect frame = self.frame;
                         frame.origin.x = self.isRevealed ? SPACE_FROM_LEFT_WHEN_REVEALED : 0;
                         self.frame = frame;
                     } completion:^(BOOL finished) {
                     }];
}

@end
