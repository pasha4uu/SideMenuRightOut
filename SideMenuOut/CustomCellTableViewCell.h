//
//  CustomCellTableViewCell.h
//  Hoopoun
//
//  Created by abhilash j on 2/15/1939 Saka.
//  Copyright © 1939 Saka abhilash j. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCellTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UIImageView *userImgView;

@end
