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

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    Tower1Dangerzone.hidden = YES;
    Tower2Dangerzone.hidden = YES;
    Tower3Dangerzone.hidden = YES;
    Tower4Dangerzone.hidden = YES;
    Tower5Dangerzone.hidden = YES;
    
}

-(IBAction)CancelNewTower:(id)sender{

    NextWave.hidden = NO;
    CancelNewTower.hidden = YES;
    NewTower.hidden = NO;
    Credits.text = [NSString stringWithFormat:@"%i", CreditsNumber];
    
    if(Tower1 == NO){
        Tower1Space.hidden = YES;
    }
    if(Tower2 == NO){
        Tower2Space.hidden = YES;
    }
    if(Tower3 == NO){
        Tower3Space.hidden = YES;
    }
    if(Tower4 == NO){
        Tower4Space.hidden = YES;
    }
    if(Tower5 == NO){
        Tower5Space.hidden = YES;
    }
    
}


-(void)TowerPlaced{
    NextWave.hidden = NO;
    CancelNewTower.hidden = YES;
    NewTower.hidden = NO;
    Credits.text = [NSString stringWithFormat:@"%i", CreditsNumber];
    
    if(Tower1 == NO){
        Tower1Space.hidden = YES;
    }
    if(Tower2 == NO){
        Tower2Space.hidden = YES;
    }
    if(Tower3 == NO){
        Tower3Space.hidden = YES;
    }
    if(Tower4 == NO){
        Tower4Space.hidden = YES;
    }
    if(Tower5 == NO){
        Tower5Space.hidden = YES;
    }

    
    
    
}

-(IBAction)Tower1Space:(id)sender{
    if (Tower1 == YES){
        Tower1Dangerzone.hidden = NO;
        Tower2Dangerzone.hidden = YES;
        Tower3Dangerzone.hidden = YES;
        Tower4Dangerzone.hidden = YES;
        Tower5Dangerzone.hidden = YES;

    }
    else{
        UIImage *buttonImage = [UIImage imageNamed:@"Tower.png"];
        [Tower1Space setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Tower1Space];

        CreditsNumber = CreditsNumber - 15;
        Tower1 = YES;
        [self TowerPlaced];
    }
}

-(IBAction)Tower2Space:(id)sender{
    if (Tower2 == YES){
        Tower2Dangerzone.hidden = NO;
        Tower1Dangerzone.hidden = YES;
        Tower3Dangerzone.hidden = YES;
        Tower4Dangerzone.hidden = YES;
        Tower5Dangerzone.hidden = YES;

    }
    else{
        UIImage *buttonImage = [UIImage imageNamed:@"Tower.png"];
        [Tower2Space setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Tower2Space];
        
        CreditsNumber = CreditsNumber - 15;
        Tower2 = YES;
        [self TowerPlaced];
    }
}

-(IBAction)Tower3Space:(id)sender{
    if (Tower3 == YES){
        Tower3Dangerzone.hidden = NO;
        Tower1Dangerzone.hidden = YES;
        Tower2Dangerzone.hidden = YES;
        Tower4Dangerzone.hidden = YES;
        Tower5Dangerzone.hidden = YES;

    }
    else{
        UIImage *buttonImage = [UIImage imageNamed:@"Tower.png"];
        [Tower3Space setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Tower3Space];
        
        CreditsNumber = CreditsNumber - 15;
        Tower3 = YES;
        [self TowerPlaced];
    }
}

-(IBAction)Tower4Space:(id)sender{
    if (Tower4 == YES){
        Tower4Dangerzone.hidden = NO;
        Tower1Dangerzone.hidden = YES;
        Tower2Dangerzone.hidden = YES;
        Tower3Dangerzone.hidden = YES;
        Tower5Dangerzone.hidden = YES;

    }
    else{
        UIImage *buttonImage = [UIImage imageNamed:@"Tower.png"];
        [Tower4Space setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Tower4Space];
        
        CreditsNumber = CreditsNumber - 15;
        Tower4 = YES;
        [self TowerPlaced];
    }
}

-(IBAction)Tower5Space:(id)sender{
    if (Tower5 == YES){
        Tower5Dangerzone.hidden = NO;
        Tower1Dangerzone.hidden = YES;
        Tower2Dangerzone.hidden = YES;
        Tower3Dangerzone.hidden = YES;
        Tower4Dangerzone.hidden = YES;

    }
    else{
        UIImage *buttonImage = [UIImage imageNamed:@"Tower.png"];
        [Tower5Space setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Tower5Space];
        
        CreditsNumber = CreditsNumber - 15;
        Tower5 = YES;
        [self TowerPlaced];
    }
}


-(IBAction)NewTower:(id)sender{
    
    if (CreditsNumber > 14){
        NextWave.hidden = YES;
        NewTower.hidden = YES;
        CancelNewTower.hidden = NO;
        
        Tower1Space.hidden = NO;
        Tower2Space.hidden = NO;
        Tower3Space.hidden = NO;
        Tower4Space.hidden = NO;
        Tower5Space.hidden = NO;
        
    }
    
}




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
    
    NewTower.hidden = YES;
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
    
    Tower1Space.hidden = YES;
    Tower2Space.hidden = YES;
    Tower3Space.hidden = YES;
    Tower4Space.hidden = YES;
    Tower5Space.hidden = YES;
    Tower1Dangerzone.hidden = YES;
    Tower2Dangerzone.hidden = YES;
    Tower3Dangerzone.hidden = YES;
    Tower4Dangerzone.hidden = YES;
    Tower5Dangerzone.hidden = YES;
    Tower1Bullet.hidden = YES;
    Tower2Bullet.hidden = YES;
    Tower3Bullet.hidden = YES;
    Tower4Bullet.hidden = YES;
    Tower5Bullet.hidden = YES;
    
    CreditsNumber = 15;
    Credits.text = [NSString stringWithFormat:@"%i", CreditsNumber];
    
    Tower1 = NO;
    Tower2 = NO;
    Tower3 = NO;
    Tower4 = NO;
    Tower5 = NO;
    
    CancelNewTower.hidden = YES;
    
    
    
    
    [super viewDidLoad];

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source



@end
