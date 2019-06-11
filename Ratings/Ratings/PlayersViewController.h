//
//  PlayersViewController.h
//  Ratings
//
//  Created by James Oliver on 2019-06-11.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"


NS_ASSUME_NONNULL_BEGIN

@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *players;

@end

NS_ASSUME_NONNULL_END
