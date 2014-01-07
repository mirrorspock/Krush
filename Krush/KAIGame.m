//
//  KAIGame.m
//  Krush
//
//  Created by Mirror Spock on 07/01/14.
//  Copyright (c) 2014 Mirror Spock. All rights reserved.
//

#import "KAIGame.h"

@interface KAIGame ()

@end

@implementation KAIGame


-(void)Moving{
    
    Tank.center = CGPointMake(Tank.center.x + TankX, Tank.center.y + TankY);
    
    if (CGRectIntersectsRect(Tank.frame, Corner1.frame)){
        
        Tank.image = [UIImage imageNamed:@"TankUp.png"];
        TankX = 0;
        TankY = -2;
    }
    if (CGRectIntersectsRect(Tank.frame, Corner2.frame)){

        Tank.image = [UIImage imageNamed:@"TankRight.png"];
        TankX = 2;
        TankY = 0;
    }
    
}




-(IBAction)NextWave:(id)sender{
    
    NextWave.hidden = YES;
    Tank.hidden = NO;
    Movement = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(Moving) userInfo:nil repeats:YES];
    
}





- (void)viewDidLoad
{
    
    Corner1.hidden = YES;
    Corner2.hidden = YES;
    Tank.hidden = YES;
    Tank.center = CGPointMake(-26, 200);
    
    TankX = 2;
    TankY = 0;
    
    
    
    
    
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
