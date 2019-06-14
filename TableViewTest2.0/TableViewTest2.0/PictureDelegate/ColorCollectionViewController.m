//
//  ColorCollectionViewController.m
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ColorCollectionViewController.h"
#import "NewColourFormViewController.h"

@interface ColorCollectionViewController ()


@property NSMutableArray *colours;
@property (nonatomic, weak) id  <NewColourDelegate>  delegate;

@end

@implementation ColorCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    _colours = [NSMutableArray arrayWithObjects:[UIColor redColor],[UIColor blueColor], nil];
    self.collectionView.dataSource = self;
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)addCell:(NewColourCell *)color {
    if(color.colour != nil)
        [self.colours addObject:color.colour];
    [self.collectionView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue.identifier isEqualToString: @"addCity"]) {
        NewColourFormViewController *colourVC = segue.destinationViewController.childViewControllers.firstObject;
        
        colourVC.delegate = self;
    }
    else if([segue.identifier isEqualToString: @"newColour"]) {
        NewColourFormViewController *colourVC = segue.destinationViewController;
        
        colourVC.delegate = self;
    }
    
}
#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.colours.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"colourCell" forIndexPath:indexPath];
    if(cell == nil) {
        cell = [[UICollectionViewCell alloc]initWithFrame:self.view.frame];
    }
    cell.backgroundColor = [self.colours objectAtIndex:indexPath.row];
    return cell;
}


@end
