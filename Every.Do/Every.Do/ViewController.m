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
#import "NewTaskViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *toDoTableView;

@property UISwipeGestureRecognizer *mySwipe;

@end

@implementation ViewController {
    NSMutableArray *taskList;
    NSUInteger selectedIndex;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    taskList = [[NSMutableArray alloc]init];
    self.toDoTableView.delegate = self;
    self.toDoTableView.dataSource = self;
    self.toDoTableView.allowsMultipleSelectionDuringEditing = NO;
    
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





- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [taskList removeObjectAtIndex:indexPath.row];
        [_toDoTableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}


- (UISwipeActionsConfiguration *)tableView:(UITableView *)tableView leadingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSIndexPath *myIndex = [NSIndexPath indexPathForRow:indexPath.length inSection:0];
    
    ToDoCellView *swipedCell = [tableView cellForRowAtIndexPath:indexPath];
    [self.toDoTableView moveRowAtIndexPath:indexPath toIndexPath:myIndex];
    swipedCell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    
    
    
//    [tableView moveRowAtIndexPath:tableView.indexPathForSelectedRow toIndexPath:selectedIndex];
    return nil;
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

- (IBAction)unwindToViewController:(UIStoryboardSegue *)unwindSegue {
    NewTaskViewController *newTaskViewController = unwindSegue.sourceViewController;
    
    ToDo *taskSave = [[ToDo alloc]init];
    taskSave.title = [newTaskViewController taskNameTextField].text;
    taskSave.taskDescription = [newTaskViewController taskDescriptionTextField].text;
    taskSave.taskPriority = [[newTaskViewController taskPriorityTextField].text integerValue];
    
    [taskList insertObject:taskSave atIndex:0];
    [self.toDoTableView reloadData];
    
}


@end
