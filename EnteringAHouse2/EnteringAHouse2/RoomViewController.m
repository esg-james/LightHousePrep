//
//  RoomViewController.m
//  EnteringAHouse2
//
//  Created by James Oliver on 2019-06-05.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "RoomViewController.h"

@interface RoomViewController ()

@end

@implementation RoomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIBarButtonItem *runAway = [[UIBarButtonItem alloc]
                                initWithTitle: @"Get out"
                                style: UIBarButtonItemStylePlain
                                target: self
                                action: @selector(exitTheHouse)];
    self.navigationItem.rightBarButtonItem = runAway;

    
    
}

//-(void)goToRoom:(NSString *)name {
//    RoomViewController *newViewController = [[RoomViewController alloc]init];
//    [self.navigationController pushViewController:newViewController animated:YES];
//}
//
-(void)exitTheHouse {
    [self performSegueWithIdentifier: @"secretExit" sender: self];
   // [self.navigationController popToRootViewControllerAnimated:YES];
    
}

@end
