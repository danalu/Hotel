//
//  UIViewController+Hotel.m
//  CategoriesExtraction
//
//  Created by yfan on 4/18/14.
//  Copyright (c) 2014 yf. All rights reserved.
//

#import "UIViewController+Hotel.h"

@implementation UIViewController (Hotel)

- (void)showChildController:(UIViewController*)childController
                     inView:(UIView*)hostView
                   animated:(BOOL)animated
            finalStateBlock:(void(^)(void))finalStateBlock
            completionBlock:(void(^)(void))completionBlock
{
    if(!childController)
    {
        return;
    }
    
    [self addChildViewController:childController];
    childController.view.frame = hostView.bounds;
    [hostView addSubview:childController.view];
    if(!animated)
    {
        if(finalStateBlock)
        {
            finalStateBlock();
        }
        [childController didMoveToParentViewController:self];
        UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, nil);
        if(completionBlock)
        {
            completionBlock();
        }
    }
    else
    {
        [UIView animateWithDuration:0.2 animations:^{
            finalStateBlock();
        } completion:^(BOOL finished) {
            [childController didMoveToParentViewController:self];
            UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, nil);
            if(completionBlock)
            {
                completionBlock();
            }
        }];
    }
}

- (void)dismissChildViewController:(UIViewController*)childController
                          animated:(BOOL)animated
                   finalStateBlock:(void(^)(void))finalStateBlock
                   completionBlock:(void(^)(void))completionBlock
{
    if(childController.parentViewController != self)
    {
        return;
    }
    
    [childController willMoveToParentViewController:nil];
    if(!animated)
    {
        if(finalStateBlock)
        {
            finalStateBlock();
        }
        [childController.view removeFromSuperview];
        [childController removeFromParentViewController];
        if(completionBlock)
        {
            completionBlock();
        }
        UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, nil);
    }
    else
    {
        [UIView animateWithDuration:0.2 animations:^{
            if(finalStateBlock)
            {
                finalStateBlock();
            }
        } completion:^(BOOL finished) {
            [childController.view removeFromSuperview];
            [childController removeFromParentViewController];
            if(completionBlock)
            {
                completionBlock();
            }
            UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, nil);
        }];
    }
}

@end
