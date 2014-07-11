//
//  ViewController.m
//  HotelApp
//
//  Created by 卢光友 on 14-4-19.
//
//

#import "ViewController.h"
#import "HLHotelSDK.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    HLHotelSDK *hotelSDK = [[HLHotelSDK alloc] init];
    [hotelSDK testSDKNetworkReachable];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
