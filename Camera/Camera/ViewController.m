//
//  ViewController.m
//  Camera
//
//  Created by alex oh on 10/19/15.
//  Copyright © 2015 alex oh. All rights reserved.
//

#import "ViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController () <UINavigationControllerDelegate,UIImagePickerControllerDelegate>

@property UIImagePickerController * pickerController;

@property (weak, nonatomic) IBOutlet UIImageView *mySelfieImageView;


@end

@implementation ViewController

/*

- (UIView *)createBox:(CGRect)frame {
    UIView * view = [[UIView alloc] initWithFrame:frame];
    // swift - let view: UIView = UIView(frame: frame)
    // allocate is creating an object and puts it in a space in memeory
    
    // * denotes a pointer
    
    // view2 is pointing to the same spot in memory as view
    UIView * view2 = view;
    
    // now view is pointing to a different spot than view2, because of UIView alloc
    view = [[UIView alloc] init];
    
    
    // these are making copies because they are not pointers, no *
    int num1 = 5;
    
    int num2 = num1;
    
    return view;
    
    
}
*/



/* COMES WITH PROPERTY

@synthesize names=_names;

- (void)setNames:(NSArray *)names {
    
    _names = names;
    
}

- (NSArray *)names {
    
    return _names;
    
}

COMES WITH PROPERTY */


- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    
    if (self != nil) {
        
        self.pickerController = [[UIImagePickerController alloc] init];
        self.pickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
//        self.pickerController.cameraDevice = UIImagePickerControllerCameraDeviceFront;
        self.pickerController.delegate = self;
        
        
    }
    
    return self;
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
//    [self.view addSubview:self.pickerController.view];
    
    if (self.mySelfieImageView.image == nil) {
        
        [self presentViewController:self.pickerController animated:YES completion:nil];
        
    }
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    
    NSString * type = info[UIImagePickerControllerMediaType];
    
    if (type == (NSString *)kUTTypeImage) {
        
        UIImage * image = info[UIImagePickerControllerOriginalImage];
        
        self.mySelfieImageView.image = image;
        
    }
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    
    
}

@end
