//
//  UIImage+Hotel.m
//  CategoriesExtraction
//
//  Created by yfan on 4/18/14.
//  Copyright (c) 2014 yf. All rights reserved.
//

#import "UIImage+Hotel.h"

@implementation UIImage (Hotel)

+ (UIImage*)horizontallyStretchingImageWithName:(NSString*)name
{
    UIImage* image = [UIImage imageNamed:name];
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(0, floorf(0.5f*image.size.width), 0, floorf(0.5f*image.size.width))];
}

+ (UIImage*)verticallyStretchingImageWithName:(NSString*)name
{
    UIImage* image = [UIImage imageNamed:name];
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(0.5f*image.size.height, 0, 0.5f*image.size.height, 0)];
}

+ (UIImage*)fullyStretchingImageWithName:(NSString*)name
{
    UIImage* image = [UIImage imageNamed:name];
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(0.5f*image.size.height, 0.5f*image.size.width, 0.5f*image.size.height, 0.5f*image.size.width)];
}

+ (UIImage*)imageWithName:(NSString*)name capInsets:(UIEdgeInsets)capInsets
{
    UIImage* image = [UIImage imageNamed:name];
    return [image resizableImageWithCapInsets:capInsets];
}

@end
