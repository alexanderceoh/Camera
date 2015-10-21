//
//  FilterViewController.m
//  Camera
//
//  Created by alex oh on 10/19/15.
//  Copyright © 2015 alex oh. All rights reserved.
//

#import "FilterViewController.h"

#import "FilterCollectionViewCell.h"

#import "imageEditing.h"


@interface FilterViewController () <UICollectionViewDataSource,UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *filterImageView;

@property (weak, nonatomic) IBOutlet UICollectionView *filterCollectionView;


@end

@implementation FilterViewController
{
    
    NSArray * filterNames;

}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.filterImageView.image = self.originalImage;
    
    self.filterCollectionView.dataSource = self;
    self.filterCollectionView.delegate = self;
    
    filterNames = [CIFilter filterNamesInCategory:kCICategoryColorEffect];
    
//    This is for multiple filters
//    [CIFilter filterNamesInCategories:@[kCICategoryColorEffect,kCICategoryBlur]];
    
    [self.filterCollectionView reloadData];
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return filterNames.count;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    FilterCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"FilterCell" forIndexPath:indexPath];
    
    cell.filterName = filterNames[indexPath.item];

    UIImage * resizedImage = resizeImage(self.originalImage, CGSizeMake(80, 80));
    cell.originalImage = resizedImage;
    
    return cell;
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    FilterCollectionViewCell * cell = (FilterCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    
    self.filterImageView.image = filterImage(self.originalImage, cell.filterName);
    
}

@end



