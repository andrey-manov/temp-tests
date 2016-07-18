//
//  TableViewCell.m
//  TestCellAnimations
//
//  Created by Andrey Manov on 18/07/16.
//  Copyright © 2016 Andrey Manov. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self applyStyling];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)applyStyling {
    
    self.backgroundColor                = [UIColor greenColor];
    self.contentView.backgroundColor    = [UIColor clearColor];
}

@end
