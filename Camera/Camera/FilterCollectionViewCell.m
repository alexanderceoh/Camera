//
//  FilterCollectionViewCell.m
//  Camera
//
//  Created by alex oh on 10/19/15.
//  Copyright © 2015 alex oh. All rights reserved.
//

#import "FilterCollectionViewCell.h"

#import "imageEditing.h"

@implementation FilterCollectionViewCell

- (void)didMoveToWindow {
    
//    [self filterImage];
    
    self.filterImageView.image = filterImage(self.originalImage, self.filterName);
    
}

- (void)prepareForReuse {
    
//    [self filterImage];
    self.filterImageView.image = filterImage(self.originalImage, self.filterName);
    
}



@end
