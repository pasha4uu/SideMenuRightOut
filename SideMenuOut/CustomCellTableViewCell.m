//
//  CustomCellTableViewCell.m
//  Hoopoun
//
//  Created by abhilash j on 2/15/1939 Saka.
//  Copyright © 1939 Saka abhilash j. All rights reserved.
//

#import "CustomCellTableViewCell.h"

@implementation CustomCellTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    _userImgView.layer.backgroundColor=[[UIColor clearColor] CGColor];
    _userImgView.layer.cornerRadius=30;
    _userImgView.layer.masksToBounds = YES;
    _userImgView.layer.borderColor=[[UIColor redColor] CGColor];
    
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
