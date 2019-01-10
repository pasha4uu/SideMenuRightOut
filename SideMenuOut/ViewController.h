//
//  ViewController.h
//  SideMenuOut
//
//  Created by Bhagy on 22/02/18.
//  Copyright © 2018 Bhagy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"

@interface ViewController : UIViewController<SlideNavigationControllerDelegate,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UIButton *backBtnClick;
- (IBAction)menuAction:(id)sender;

@end

