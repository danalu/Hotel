//
//  HotelSDK.m
//  HotelSDK
//
//  Created by 卢光友 on 14-4-19.
//
//

#import "HLHotelSDK.h"
#import "AFNetworkReachabilityManager.h"
#import "HLViewController.h"

@implementation HLHotelSDK

- (void)testSDKNetworkReachable {
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    NSString *newworkState = nil;
    if ([manager isReachable]) {
        newworkState = (@"current newwork is on!");
    } else {
        newworkState = (@"current nework is not on!");
    }
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"My lib" message:newworkState delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
}

- (UIViewController*)getSDKViewController {
    HLViewController *viewController = [[HLViewController alloc] init];
    
    return viewController;
}

@end
