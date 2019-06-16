//
//  CatsCollectionViewController.h
//  Cats
//
//  Created by James Oliver on 2019-06-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CatPhoto.h"
#import "CatURLRequest.h"
#import "CatCollectionViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface CatsCollectionViewController : UICollectionViewController

@property (nonatomic) NSArray <NSDictionary*> *dictionaryOfCats;
@property (nonatomic) NSMutableArray <CatPhoto*> *catArray;


@end

NS_ASSUME_NONNULL_END
