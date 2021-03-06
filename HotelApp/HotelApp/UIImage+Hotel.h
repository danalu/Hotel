//
//  UIImage+Hotel.h
//  CategoriesExtraction
//
//  Created by yfan on 4/18/14.
//  Copyright (c) 2014 yf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Hotel)

+ (UIImage*)horizontallyStretchingImageWithName:(NSString*)name;
+ (UIImage*)verticallyStretchingImageWithName:(NSString*)name;
+ (UIImage*)fullyStretchingImageWithName:(NSString*)name;
+ (UIImage*)imageWithName:(NSString*)name capInsets:(UIEdgeInsets)capInsets;

@end
