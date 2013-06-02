//
//  ContainerView.mm
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//

#import "ContainerView.h"
#import "SettingsView.h"


@implementation ContainerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        // the container view has a settings view subclass
        SettingsView* settingsView = [[SettingsView alloc] initWithFrame:frame];
        settingsView.autoresizesSubviews = YES;
        settingsView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self addSubview:settingsView];
    }
    return self;
}

@end
