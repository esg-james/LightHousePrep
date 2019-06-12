//
//  TaskDetailsViewController.h
//  Every.Do
//
//  Created by James Oliver on 2019-06-11.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoCellView.h"

NS_ASSUME_NONNULL_BEGIN
@class ToDo;

@interface TaskDetailsViewController : UIViewController
@property (strong,nonatomic) ToDoCellView *incomingCell;


@end

NS_ASSUME_NONNULL_END
