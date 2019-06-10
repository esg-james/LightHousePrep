//
//  ImageDetailViewController.h
//  ScrollViewImageGalleries
//
//  Created by James Oliver on 2019-06-10.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageDetailViewController : UIViewController <UIScrollViewDelegate>
@property UIImageView *theView;
@property (strong, nonatomic) IBOutlet UIScrollView *myScrollView;

@end

NS_ASSUME_NONNULL_END
