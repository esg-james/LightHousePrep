//
//  MyScrollView.h
//  MyScrollView
//
//  Created by James Oliver on 2019-06-10.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;
@property (nonatomic,weak) UIPanGestureRecognizer *myPan;
-(void)myPanGestureRecognizer:(UIPanGestureRecognizer *)sender;

@end

NS_ASSUME_NONNULL_END
