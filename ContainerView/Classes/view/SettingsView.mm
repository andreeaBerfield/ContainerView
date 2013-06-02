//
//  SettingsView.mm
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//

#import "SettingsView.h"
#import "SettingsCommands.h"

@implementation SettingsView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor yellowColor];
        
        // add a label
        UILabel* settingsLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 120, 40)];
        [settingsLabel setText:@"Settings page"];
        [settingsLabel setTextColor:[UIColor blueColor]];
        settingsLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:settingsLabel];
        
        // add tap gesture recognizer
        UITapGestureRecognizer* tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
        tapGesture.numberOfTapsRequired = 1;
        tapGesture.numberOfTouchesRequired = 1;
        [self addGestureRecognizer:tapGesture];
    }
    
    return self;
}

- (void) handleTap:(UIGestureRecognizer *)sender
{
    [SettingsCommands revealHideHomeView];
}

@end
