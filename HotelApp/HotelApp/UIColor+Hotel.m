//
//  UIColor+Hotel.m
//  CategoriesExtraction
//
//  Created by yfan on 4/18/14.
//  Copyright (c) 2014 yf. All rights reserved.
//

#import "UIColor+Hotel.h"

@implementation UIColor (Hotel)

+ (UIColor*)colorWithHex:(NSInteger)hexColor
{
    const NSInteger red = (hexColor & 0xFF0000) >> 16;
    const NSInteger green = (hexColor & 0x00FF00) >> 8;
    const NSInteger blue = (hexColor & 0x0000FF);
    return [UIColor colorWithRed:(CGFloat)red/255.0f green:(CGFloat)green/255.0f blue:(CGFloat)blue/255.0f alpha:1.0f];
}

@end
