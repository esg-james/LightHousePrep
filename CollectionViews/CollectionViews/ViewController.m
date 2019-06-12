//
//  ViewController.m
//  CollectionViews
//
//  Created by James Oliver on 2019-06-12.
//  Copyright © 2019 James Oliver. All rights reserved.
//
#define MAX_COLUMN              3 // Max columns in the pattern
#define MAX_LINE_PER_PATTERN    3 // Max lines in the pattern
#define PATTERN_ITEM_COUNT      5 // Max items in the pattern
#import "ViewController.h"
#import "ColorCell.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *collectionViewFlowLayout;

@end

@implementation ViewController {
    int totalColors;
    NSArray *myAlbum;
    NSArray *myImages;
    CGSize unitSize;
    NSMutableDictionary *cellLayouts;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    
    totalColors = 100;
    
    self.collectionViewFlowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    self.collectionViewFlowLayout.minimumLineSpacing = 0;
    self.collectionViewFlowLayout.minimumInteritemSpacing = 0;
    self.collectionViewFlowLayout.sectionInset = UIEdgeInsetsMake(0.0, 0.0, 0.0, 0.0);
    myAlbum = [NSArray arrayWithObjects:@"puffdog.jpg", nil];
    myImages = [NSArray arrayWithObjects:@"puffdog.jpg",@"fancydog.jpg",@"pugdog.jpg",@"maddog.jpg",@"happyrotty.jpg",@"beautifulhusky.jpg",@"babynuggets.jpg",@"morenugget.jpg",@"prostheticdog.jpg",@"dogtrack.jpg",@"puffdog.jpg",@"fancydog.jpg",@"pugdog.jpg",@"maddog.jpg",@"happyrotty.jpg",@"beautifulhusky.jpg",@"babynuggets.jpg",@"morenugget.jpg",@"prostheticdog.jpg",@"dogtrack.jpg",@"puffdog.jpg",@"fancydog.jpg",@"pugdog.jpg",@"maddog.jpg",@"happyrotty.jpg",@"beautifulhusky.jpg",@"babynuggets.jpg",@"morenugget.jpg",@"prostheticdog.jpg",@"dogtrack.jpg",nil];
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(ToDoCellView *)taskCell
//{
//    if ([segue.identifier isEqualToString:@"TaskDetails"]) {
//        TaskDetailsViewController *taskPickerViewController = segue.destinationViewController;
//        taskPickerViewController.incomingCell = taskCell;
//    }
//}

-(UIColor *)colorForIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row >= totalColors) {
        return UIColor.blackColor;
    }
    CGFloat hueValue = (CGFloat)(indexPath.row)/(CGFloat)(totalColors);
    return [UIColor colorWithHue:hueValue saturation:1.0 brightness:1.0 alpha:1.0];
}



- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//    return totalColors;
    return myImages.count/3;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ColorCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"com.codepath.ColorCell" forIndexPath:indexPath];
    UIColor *cellColor = [self colorForIndexPath:indexPath];
    cell.backgroundColor = cellColor;
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    recipeImageView.image = [UIImage imageNamed:[myImages objectAtIndex:indexPath.row]];
    [cell.contentView addSubview:recipeImageView];
    

   
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    int totalwidth = self.collectionView.bounds.size.width;
    int totalheight = self.collectionView.bounds.size.height;
    int numberOfCellsPerRow = 3;
    int oddEven = indexPath.row / numberOfCellsPerRow % 2;
    int dimensions = (CGFloat)(totalwidth / numberOfCellsPerRow);

//    if (oddEven == 0) {
//        return CGSizeMake(dimensions, dimensions);
//    } else {
//        return CGSizeMake(dimensions, dimensions / 1.5);
//    }
    switch (indexPath.item) {
        case 0:
            dimensions = (CGFloat)((totalwidth + (totalheight)) / numberOfCellsPerRow);
            break;
        case 1:
            dimensions = (CGFloat)(totalwidth / numberOfCellsPerRow);
            break;
        case 2:
            dimensions = (CGFloat)(totalwidth / numberOfCellsPerRow);
            break;
        case 3:
            dimensions = (CGFloat)(totalwidth / numberOfCellsPerRow);
            break;
        case 4:
            dimensions = (CGFloat)(totalwidth / numberOfCellsPerRow);
            break;
            
            
        default:
            break;
    }
    return CGSizeMake(dimensions, dimensions);
}





@end
