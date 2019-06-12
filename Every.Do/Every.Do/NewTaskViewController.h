//
//  NewTaskViewController.h
//  Every.Do
//
//  Created by James Oliver on 2019-06-11.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

NS_ASSUME_NONNULL_BEGIN

@interface NewTaskViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *taskNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *taskPriorityTextField;
@property (weak, nonatomic) IBOutlet UITextField *taskDescriptionTextField;

@end

NS_ASSUME_NONNULL_END
