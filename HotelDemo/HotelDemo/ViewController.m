//
//  ViewController.m
//  HotelDemo
//
//  Created by 卢光友 on 14-4-19.
//
//

#import "ViewController.h"
#import "HLHotelSDK.h"

@interface ViewController ()

- (IBAction)displaySDKView:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark event
- (IBAction)displaySDKView:(id)sender {
    HLHotelSDK *hotelSDK = [[HLHotelSDK alloc] init];
    UIViewController *viewController = [hotelSDK getSDKViewController];
    
    [self presentViewController:viewController animated:YES completion:^{
        
    }];
}

@end
