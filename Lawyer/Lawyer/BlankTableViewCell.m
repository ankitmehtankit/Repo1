//
//  BlankTableViewCell.m
//  Lawyer
//
//  Created by Ankit Mehta on 06/10/17.
//  Copyright © 2017 Ankit Mehta. All rights reserved.
//

#import "BlankTableViewCell.h"

@implementation BlankTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Default Select background
    UIView *v = [[UIView alloc] init];
    v.backgroundColor = [UIColor clearColor];
    self.selectedBackgroundView = v;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
