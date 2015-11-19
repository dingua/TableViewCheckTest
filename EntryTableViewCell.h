//
//  EntryTableViewCell.h
//  TableViewCheckTest
//
//  Created by Mejdi Lassidi on 11/19/15.
//  Copyright © 2015 Dingua. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol EntryTableViewCellDelegate;

@interface EntryTableViewCell : UITableViewCell
@property (nonatomic, assign) id<EntryTableViewCellDelegate>delegate;
@property (nonatomic, strong) IBOutlet UIButton *checkButton;
@property (nonatomic, strong) IBOutlet UILabel *entryTextLabel;
@end

@protocol EntryTableViewCellDelegate
- (void)checkButtonPressed:(UIButton*)button;
@end
