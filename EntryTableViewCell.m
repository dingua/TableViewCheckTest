//
//  EntryTableViewCell.m
//  TableViewCheckTest
//
//  Created by Mejdi Lassidi on 11/19/15.
//  Copyright © 2015 Dingua. All rights reserved.
//

#import "EntryTableViewCell.h"

@implementation EntryTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)checkButtonPressed:(id)sender {
    [self.delegate checkButtonPressed:(UIButton*)sender];
}

@end
