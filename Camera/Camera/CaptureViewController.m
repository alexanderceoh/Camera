//
//  CaptureViewController.m
//  Camera
//
//  Created by alex oh on 10/19/15.
//  Copyright © 2015 alex oh. All rights reserved.
//

#import "CaptureViewController.h"

@interface CaptureViewController ()

@property (weak, nonatomic) IBOutlet UIView *cameraView;

- (IBAction)takePictureButton:(id)sender;

@end

@implementation CaptureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)takePictureButton:(id)sender {
}
@end
