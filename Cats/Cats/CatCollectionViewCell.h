//
//  CatCollectionViewCell.h
//  Cats
//
//  Created by James Oliver on 2019-06-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CatCollectionViewCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *catImageView;
@property (strong, nonatomic) IBOutlet UILabel *catLabel;

@end

NS_ASSUME_NONNULL_END
