//
//  ViewController.m
//  TableViewPractice
//
//  Created by James Oliver on 2019-06-12.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ViewController.h"




@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong,nonatomic) UITableView *table;
@property (strong, nonatomic) NSArray *myArray;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myArray = [NSArray arrayWithObjects:@"Vancouver",@"Calgary",@"Edmonton",@"Regina",@"Saskatoon",@"Indian Head",@"Winnipeg",@"Ottawa",@"Toronto",@"Montreal", nil];
    self.table = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.table.dataSource = self;
    self.table.delegate = self;
    [self.view addSubview:self.table];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.myArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cellIdentifier";
    UITableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:cellID];
    if(cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = [_myArray objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"title of the cell: %@", [_myArray objectAtIndex:indexPath.row]);
}


- (void)handleNewData:(NSString *)city {
    
}

@end
