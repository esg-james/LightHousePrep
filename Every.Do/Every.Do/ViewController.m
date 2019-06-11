//
//  ViewController.m
//  Every.Do
//
//  Created by James Oliver on 2019-06-11.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ViewController.h"
#import "ToDoCellView.h"
#import "ToDo.h"
#import "TaskDetailsViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *toDoTableView;

@end

@implementation ViewController {
    NSMutableArray *taskList;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    taskList = [[NSMutableArray alloc]init];
    self.toDoTableView.dataSource = self;
    
    ToDo *taskA = [[ToDo alloc]init];
    taskA.title = @"Clean this shit up";
    taskA.taskDescription = @"Too many leaves on the driveway";
    taskA.taskPriority = 1;
    taskA.isCompleted = NO;
    [taskList addObject:taskA];
    
    taskA = [[ToDo alloc]init];
    taskA.title = @"Clean this other shit up";
    taskA.taskDescription = @"Too many leaves on the driveway still";
    taskA.taskPriority = 1;
    taskA.isCompleted = NO;
    [taskList addObject:taskA];
    
    taskA = [[ToDo alloc]init];
    taskA.title = @"Come in here and clean this";
    taskA.taskDescription = @"The fridge is full of rotting food";
    taskA.taskPriority = 1;
    taskA.isCompleted = NO;
    [taskList addObject:taskA];
    
    
    
    
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [taskList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ToDoCellView *cellView = (ToDoCellView *) [tableView dequeueReusableCellWithIdentifier:@"TaskCell"];
    
    ToDo *tasksToDo = (taskList)[indexPath.row];
    
    cellView.taskLabel.text = tasksToDo.title;
    cellView.taskDescLabel.text = tasksToDo.taskDescription;
    cellView.taskIsCompleteLabel.text = [NSString stringWithFormat:@"%ld",(long)tasksToDo.taskPriority];

    return cellView;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(ToDoCellView *)taskCell
{
    if ([segue.identifier isEqualToString:@"TaskDetails"]) {
        TaskDetailsViewController *taskPickerViewController = segue.destinationViewController;
        taskPickerViewController.incomingCell = taskCell;

    }
}


@end
