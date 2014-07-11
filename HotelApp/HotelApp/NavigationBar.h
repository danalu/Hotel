//
//  NavigationBar.h
//  CategoriesExtraction
//
//  Created by yfan on 4/18/14.
//  Copyright (c) 2014 yf. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 A navigation bar subclass to support custom background images.
 It allows custom background images with heights other than 44pt, and adds drop shadow
 support on iOS5.
 */

@interface NavigationBar : UINavigationBar

/**
 Returns the offset that should be applied to UIBarButtonItem content to center it
 vertically in the navigation bar.
 */
+ (CGFloat)verticalContentOffsetForMetrics:(UIBarMetrics)metrics;

@end
