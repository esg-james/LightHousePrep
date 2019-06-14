//
//  NewImageFormViewController.h
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface NewImageFormViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UIButton *myButton;

@property (nonatomic,weak) id <ImageCollectionViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
