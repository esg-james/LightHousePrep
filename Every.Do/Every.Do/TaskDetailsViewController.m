//
//  TaskDetailsViewController.m
//  Every.Do
//
//  Created by James Oliver on 2019-06-11.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "TaskDetailsViewController.h"
#import "ViewController.h"

@interface TaskDetailsViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *taskLabel;
@property (weak, nonatomic) IBOutlet UILabel *taskPriorityLabel;
@property (weak, nonatomic) IBOutlet UILabel *taskDescriptionLabel;

@end

@implementation TaskDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    NSString *incomingLabel = self.incomingCell.taskLabel.text;
    NSString *incomingDescription = self.incomingCell.taskDescLabel.text;
    NSString *incomingPriority = self.incomingCell.taskIsCompleteLabel.text;
    
    self.taskLabel.text = incomingLabel;
    self.taskDescriptionLabel.text = incomingDescription;
    self.taskPriorityLabel.text = incomingPriority;
    
    
}





@end
