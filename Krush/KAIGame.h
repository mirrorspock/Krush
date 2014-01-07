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


@interface KAIGame : UIViewController

{
    IBOutlet UIImageView *Tank;
    IBOutlet UIImageView *Corner1;
    IBOutlet UIImageView *Corner2;
    
    IBOutlet UIButton * NextWave;
    
    NSTimer *Movement;
    
}

-(IBAction)NextWave:(id)sender;
-(void)Moving;



@end
