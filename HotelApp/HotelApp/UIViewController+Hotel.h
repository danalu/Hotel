//
//  UIViewController+Hotel.h
//  CategoriesExtraction
//
//  Created by yfan on 4/18/14.
//  Copyright (c) 2014 yf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Hotel)

- (void)showChildController:(UIViewController*)childController
                     inView:(UIView*)view
                   animated:(BOOL)animated
            finalStateBlock:(void(^)(void))finalStateBlock
            completionBlock:(void(^)(void))completionBlock;

- (void)dismissChildViewController:(UIViewController*)childController
                          animated:(BOOL)animated
                   finalStateBlock:(void(^)(void))finalStateBlock
                   completionBlock:(void(^)(void))completionBlock;

@end
