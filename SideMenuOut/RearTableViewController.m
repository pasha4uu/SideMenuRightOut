//
//  RearTableViewController.m
//  Account_Screen_Design
//
//  Created by Admin on 26/11/1939 Saka.
//  Copyright © 1939 Saka PRADEEP SoftSolutions. All rights reserved.
//

#import "RearTableViewController.h"
#import "CustomCellTableViewCell.h"
#import "SecondCustomTableViewCell.h"
#import "FirstTableViewCell.h"
#import "SlideNavigationController.h"

@interface RearTableViewController ()
{
    FirstTableViewCell * firstCustomCell;
}

@end

@implementation RearTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _sideMenuAray = [[NSMutableArray alloc]initWithObjects:@"Home",@"My Orders",@"My Cash",@"My Wishlist",@"Feedone",@"Delivery Address",@"Notifications",@"Profile Settings",@"Privacy Settings",@"Invite and earn",@"Rate and Reviews",@"Feedback",@"Terms and Conditions",@"Logout", nil];
    
    _sideMenuImagesArray = [[NSMutableArray alloc]initWithObjects:@"",@"myorders.png",@"wallet.png",@"wishlist.png",@"feedone",@"deliveryaddress",@"notifications.png",@"profilsetting.png",@"privacy.png",@"invite.png",@"rating.png",@"feedback",@"terms.png",@"logout.png", nil];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return YES;
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0)
    {
        return 2;
    }else{
       return 13;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    

    if (indexPath.section==0 && indexPath.row==0)
    {
        CustomCellTableViewCell * customCell = [tableView dequeueReusableCellWithIdentifier:@"customCell"];
        if (customCell==nil)
        {
            NSArray * nib = [[NSBundle mainBundle]loadNibNamed:@"CustomCellTableViewCell" owner:self options:nil];
            customCell=[nib objectAtIndex:0];
        }
        customCell.nameLabel.text=@"Account Name";
        customCell.nameLabel.textColor = [UIColor blueColor];
        
        
        return customCell;
        
    }else if (indexPath.section==0 && indexPath.row==1)
    {
        SecondCustomTableViewCell * secondCustomCell = [tableView dequeueReusableCellWithIdentifier:@"SecondCustomCell"];
        if (secondCustomCell==nil)
        {
            NSArray * nib2 = [[NSBundle mainBundle]loadNibNamed:@"SecondCustomTableViewCell" owner:self options:nil];
            secondCustomCell=[nib2 objectAtIndex:0];
        }
        
        
        return secondCustomCell;
    }
    else
    {
        
        firstCustomCell = [tableView dequeueReusableCellWithIdentifier:@"firstCustomCell"];
        if (firstCustomCell==nil)
        {
            NSArray * nib2 = [[NSBundle mainBundle]loadNibNamed:@"FirstTableViewCell" owner:self options:nil];
            firstCustomCell=[nib2 objectAtIndex:0];
            
            
        }
        
        firstCustomCell.cellTextLabel.text = [_sideMenuAray objectAtIndex:indexPath.row];
        firstCustomCell.cellImageView.image = [UIImage imageNamed:[_sideMenuImagesArray objectAtIndex:indexPath.row]];
        
        return firstCustomCell;
    }
    
    
    
    
    return nil;
    
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section==0)
    {
        return 120;

    }
        return 50;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
