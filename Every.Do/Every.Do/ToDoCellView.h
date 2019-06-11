//
//  ToDoCellView.h
//  Every.Do
//
//  Created by James Oliver on 2019-06-11.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDoCellView : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *taskLabel;
@property (weak, nonatomic) IBOutlet UILabel *taskIsCompleteLabel;
@property (weak, nonatomic) IBOutlet UILabel *taskDescLabel;




@end

NS_ASSUME_NONNULL_END
