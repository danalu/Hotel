//
//  ViewController.m
//  TestFramework
//
//  Created by 卢光友 on 14-4-12.
//  Copyright (c) 2014年 hun. All rights reserved.
//

#import "HLViewController.h"

/*
 *  得到资源bundle对象
 */
#define MyLibBUNDLE_NAME @ "HotelSDKBundle.bundle"
#define MyLibBUNDLE_PATH [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent: MyLibBUNDLE_NAME]
#define MyLibBUNDLE [NSBundle bundleWithPath: MyLibBUNDLE_PATH]


@interface UIImageView(RequestImageFromNet)

- (void)requestImageWithURL:(NSURL*)pURL;

@end

@implementation UIImageView(RequestImageFromNet)

- (void)requestImageWithURL:(NSURL*)pURL {
    dispatch_queue_t queue = dispatch_queue_create("requestImage", NULL);
    
    dispatch_async(queue, ^{
        NSError *error;
        NSData *data = [NSData dataWithContentsOfURL:pURL options:NSDataReadingUncached error:&error];
        if (!error && data.length != 0) {
            UIImage *image = [UIImage imageWithData:data];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                self.image = image;
            });
        }
    });
}

@end

@interface HLViewController ()

@property (nonatomic, weak) IBOutlet UIImageView *imageView;

- (IBAction)dismissView:(id)sender;

@end

@implementation HLViewController

- (id)init {
    self = [super initWithNibName:@"HLViewController" bundle:MyLibBUNDLE];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self performSelector:@selector(displayWebImage) withObject:nil afterDelay:0.1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark tool method
- (void)displayWebImage {
    NSString *imageURL = @"http://www.wmpic.me/wp-content/uploads/2013/04/20130425142019292.jpg";
    [self.imageView requestImageWithURL:[NSURL URLWithString:imageURL]];
}

#pragma mark Action
- (IBAction)dismissView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
        
    }];
}

@end
