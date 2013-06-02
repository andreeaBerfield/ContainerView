//
//  SettingsView.mm
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//

#import "SettingsView.h"


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
    }
    return self;
}
@end
