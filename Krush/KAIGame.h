//
//  KAIGame.h
//  Krush
//
//  Created by Mirror Spock on 07/01/14.
//  Copyright (c) 2014 Mirror Spock. All rights reserved.
//

#import <UIKit/UIKit.h>



int TankX;
int TankY;
int CreditsNumber;

BOOL Tower1;
BOOL Tower2;
BOOL Tower3;
BOOL Tower4;
BOOL Tower5;


@interface KAIGame : UIViewController

{
    IBOutlet UIImageView *Tank;
    IBOutlet UIImageView *Corner1;
    IBOutlet UIImageView *Corner2;
    
    IBOutlet UIButton *NextWave;
    
    IBOutlet UIButton *Tower1Space;
    IBOutlet UIButton *Tower2Space;
    IBOutlet UIButton *Tower3Space;
    IBOutlet UIButton *Tower4Space;
    IBOutlet UIButton *Tower5Space;

    IBOutlet UIImageView *Tower1Dangerzone;
    IBOutlet UIImageView *Tower2Dangerzone;
    IBOutlet UIImageView *Tower3Dangerzone;
    IBOutlet UIImageView *Tower4Dangerzone;
    IBOutlet UIImageView *Tower5Dangerzone;
    
    IBOutlet UIImageView *Tower1Bullet;
    IBOutlet UIImageView *Tower2Bullet;
    IBOutlet UIImageView *Tower3Bullet;
    IBOutlet UIImageView *Tower4Bullet;
    IBOutlet UIImageView *Tower5Bullet;
    
    IBOutlet UIButton *NewTower;
    IBOutlet UIButton *CancelNewTower;
    
    IBOutlet UILabel *Credits;
    
    NSTimer *Movement;
    
}


-(IBAction)NextWave:(id)sender;
-(void)Moving;
-(IBAction)NewTower:(id)sender;
-(IBAction)CancelNewTower:(id)sender;

-(IBAction)Tower1Space:(id)sender;
-(IBAction)Tower2Space:(id)sender;
-(IBAction)Tower3Space:(id)sender;
-(IBAction)Tower4Space:(id)sender;
-(IBAction)Tower5Space:(id)sender;

-(void)TowerPlaced;




@end
