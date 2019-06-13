//
//  DogCollectionViewCell.h
//  CollectionViews
//
//  Created by James Oliver on 2019-06-12.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DogCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *dogImageCell;
@property NSArray *myDogs;

@end

NS_ASSUME_NONNULL_END
