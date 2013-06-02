//
//  HomeView.mm
//  ContainerView
//
//  Created by Andreea on 6/1/13.
//  Copyright (c) 2013 Andreea. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor redColor];
        
        // add a label
        UILabel* homesLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 120, 40)];
        [homesLabel setText:@"Home page"];
        [homesLabel setTextColor:[UIColor blueColor]];
        homesLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:homesLabel];
        
    }
    return self;
}

@end
