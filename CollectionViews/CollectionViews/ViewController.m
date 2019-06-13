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
#import "DogCollectionViewCell.h"
#import "SectionCollectionReusableView.h"

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
    DogCollectionViewCell *myDog;
    SectionCollectionReusableView *headerSection;
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
    myImages = [NSArray arrayWithObjects:@"puffdog.jpg",@"fancydog.jpg",@"pugdog.jpg",@"maddog.jpg",@"happyrotty.jpg",@"beautifulhusky.jpg",@"babynuggets.jpg",@"morenugget.jpg",@"prostheticdog.jpg",@"dogtrack.jpg",@"puffdog.jpg",@"fancydog.jpg",@"pugdog.jpg",@"maddog.jpg",@"happyrotty.jpg",@"beautifulhusky.jpg",@"babynuggets.jpg",@"morenugget.jpg",@"prostheticdog.jpg",@"dogtrack.jpg",@"puffdog.jpg",@"fancydog.jpg",@"pugdog.jpg",@"maddog.jpg",@"happyrotty.jpg",@"beautifulhusky.jpg",@"babynuggets.jpg",@"morenugget.jpg",@"prostheticdog.jpg",@"dogtrack.jpg",nil];
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(ToDoCellView *)taskCell
//{
//    if ([segue.identifier isEqualToString:@"TaskDetails"]) {
//        TaskDetailsViewController *taskPickerViewController = segue.destinationViewController;
//        taskPickerViewController.incomingCell = taskCell;
//    }
//}





- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSInteger section1 = myImages.count / 2;
    NSInteger section2 = myImages.count / 2;
    return (section == 0) ? section1 : section2;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.section == 0) {
    DogCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"com.codepath.DogCell1" forIndexPath:indexPath];
    UIImageView *image = (UIImageView *)[cell viewWithTag:100];
    cell.dogImageCell.image = [UIImage imageNamed:[myImages objectAtIndex:indexPath.row]];
    [cell.contentView addSubview:image];

    return cell;
    }
    else {
        DogCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"com.codepath.DogCell2" forIndexPath:indexPath];
        UIImageView *image = (UIImageView *)[cell viewWithTag:101];
        cell.dogImageCell.image = [UIImage imageNamed:[myImages objectAtIndex:indexPath.row]];
        [cell.contentView addSubview:image];
        return cell;
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    int totalwidth = self.collectionView.bounds.size.width;
    int numberOfCellsPerRow = 3;
    int oddEven = indexPath.row / numberOfCellsPerRow % 2;
    int dimensions = (CGFloat)(totalwidth / numberOfCellsPerRow);
    if (oddEven == 0) {
        return CGSizeMake(dimensions, dimensions);
    } else {
        return CGSizeMake(dimensions, dimensions / .75);
    }
//    switch (indexPath.item) {
//        case 0:
//            dimensions = (CGFloat)((totalwidth + (totalheight)) / numberOfCellsPerRow);
//            break;
//        case 1:
//            dimensions = (CGFloat)(totalwidth / numberOfCellsPerRow);
//            break;
//        case 2:
//            dimensions = (CGFloat)(totalwidth / numberOfCellsPerRow);
//            break;
//        case 3:
//            dimensions = (CGFloat)(totalwidth / numberOfCellsPerRow);
//            break;
//        case 4:
//            dimensions = (CGFloat)(totalwidth / numberOfCellsPerRow);
//            break;
//
//
//        default:
//            break;
//    }
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 0) {
        headerSection = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"mainheader" forIndexPath:indexPath];
        headerSection.headerLabel.text = @"Dogs";
        return headerSection;
    }
    else {
        headerSection = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"mainheader" forIndexPath:indexPath];
        headerSection.headerLabel.text = @"More Dogs";
        return headerSection;
    }
}



@end
