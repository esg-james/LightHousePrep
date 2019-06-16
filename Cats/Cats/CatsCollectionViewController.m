//
//  CatsCollectionViewController.m
//  Cats
//
//  Created by James Oliver on 2019-06-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "CatsCollectionViewController.h"
#import "CatCollectionViewCell.h"

@interface CatsCollectionViewController ()

@property (nonatomic) CatPhoto *cat;

@end

@implementation CatsCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];

    [self catsUrl];
    self.catArray = [NSMutableArray new];
    self.collectionView.dataSource = self;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _catArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CatCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    if(_catArray.count > 0) {
        cell.catLabel.text = self.catArray[indexPath.row].titleURL;
        [self downloadImage:self.catArray[indexPath.row].photoURL andCell:cell];
    }
    return cell;
}

-(void)downloadImage:(NSString *)theString andCell:(CatCollectionViewCell *)theCell {
    
    NSURL *catsURL = [NSURL URLWithString:theString];
    NSURLSession *catSession = [NSURLSession sharedSession];
    NSURLSessionDownloadTask *theDownload = [catSession downloadTaskWithURL:catsURL completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if(error) {
            NSLog(@"RESPONSE: %@", error.localizedDescription);
            return;
        }
        NSData *newData = [NSData dataWithContentsOfURL:location];
        UIImage *newImage = [UIImage imageWithData:newData];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            theCell.catImageView.image = newImage;
        }
    );
        
    }];[theDownload resume];
    
    
}

-(void)catsUrl {
    //This is how you configure an NSURL session
    NSURL *catsURL = [NSURL URLWithString:@"https://api.flickr.com/services/rest/?method=flickr.photos.search&format=json&nojsoncallback=1&api_key=cfb0687bd1a0d14d5aa376ee64df650d&tags=cat"];
    NSURLSession *catSession = [NSURLSession sharedSession];
    NSURLSessionDataTask *sessionTask = [catSession dataTaskWithURL:catsURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if(error) {
            NSLog(@"RESPONSE: %@", error.localizedDescription);
            return;
        }
        NSError *jsonError;
        NSDictionary *myCats = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        
        
        self.dictionaryOfCats = myCats[@"photos"][@"photo"];
        
        for(NSDictionary *cat in self.dictionaryOfCats) {
            
            NSString *myCat = [NSString stringWithFormat:@"https://farm%@.staticflickr.com/%@/%@_%@.jpg",cat[@"farm"],cat[@"server"],cat[@"id"],cat[@"secret"]];
            CatPhoto *newCat = [[CatPhoto alloc]initWithCatPhoto:myCat andTitle:cat[@"title"]];
            [self.catArray addObject:newCat];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.collectionView reloadData];
        });
        
    }]; [sessionTask resume];
    
}





#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
