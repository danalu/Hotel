//
//  NavigationBar.m
//  CategoriesExtraction
//
//  Created by yfan on 4/18/14.
//  Copyright (c) 2014 yf. All rights reserved.
//

#import "NavigationBar.h"
#import "UIImage+Hotel.h"

@implementation NavigationBar

+ (CGFloat)verticalContentOffsetForMetrics:(UIBarMetrics)metrics
{
    const CGSize backgroundSize = [self preferredBackgroundImageForMetrics:metrics].size;
    return floorf((44.0f - backgroundSize.height)/2.0f);
}

+ (UIImage*)preferredBackgroundImageForMetrics:(UIBarMetrics)metrics
{
    if([self appearsBehindStatusBar])
    {
        return [UIImage fullyStretchingImageWithName:@"Need_img"];
    }
    return [UIImage imageNamed:@"Need_img"];
}

+ (BOOL)appearsBehindStatusBar
{
    return [self instancesRespondToSelector:@selector(backgroundImageForBarPosition:barMetrics:)];
}

+ (BOOL)needsShadow
{
    return ![self appearsBehindStatusBar];
}

- (id)initWithFrame:(CGRect)frame
{
    if((self = [super initWithFrame:frame]))
    {
        [self commonInit];
    }
    return self;
}

- (id)initWithCoder:(id)aDecoder
{
    if((self = [super initWithCoder:aDecoder]))
    {
        [self commonInit];
    }
    return self;
}

- (void)commonInit
{
    if([[self class] needsShadow])
    {
        // iOS 6 supports custom shadow images.
        [self setShadowImage:[UIImage imageNamed:@"Need_img"]];
    }
    
    UIImage* backgroundImage = [[self class] preferredBackgroundImageForMetrics:UIBarMetricsDefault];
    [self setBackgroundImage:backgroundImage forBarMetrics:UIBarMetricsDefault];
}

- (CGSize)sizeThatFits:(CGSize)size
{
    const UIBarMetrics currentMetrics = UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation]) ? UIBarMetricsLandscapePhone : UIBarMetricsDefault;
    UIImage* backgroundImage = [self backgroundImageForBarMetrics:currentMetrics];
    const CGSize preferredSize = CGSizeMake(self.superview.bounds.size.width, backgroundImage.size.height);
    return preferredSize;
}

@end
