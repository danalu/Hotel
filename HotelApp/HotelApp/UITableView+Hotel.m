//
//  UITableView+Hotel.m
//  CategoriesExtraction
//
//  Created by yfan on 4/18/14.
//  Copyright (c) 2014 yf. All rights reserved.
//

#import "UITableView+Hotel.h"

@implementation UITableView (Hotel)

- (NSIndexPath*)indexPathForCellSubview:(UIView*)subview
{
    const CGPoint buttonCornerInTable = [subview convertPoint:CGPointZero toView:self];
    return [self indexPathForRowAtPoint:buttonCornerInTable];
}

@end
