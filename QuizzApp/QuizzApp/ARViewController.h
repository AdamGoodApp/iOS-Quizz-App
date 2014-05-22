//
//  ARViewController.h
//  QuizzApp
//
//  Created by Rais on 21/05/2014.
//  Copyright (c) 2014 AdamGoodApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ARViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *manButtonAttributes;
@property (strong, nonatomic) IBOutlet UIButton *girlButtonAttributes;
@property (strong, nonatomic) IBOutlet UIButton *skateboardButtonAttributes;
@property (strong, nonatomic) IBOutlet UIButton *bowlingButtonAttributes;
@property (strong, nonatomic) IBOutlet UIButton *joystickButtonAttributes;
@property (strong, nonatomic) IBOutlet UIButton *djButtonAttributes;
@property (strong, nonatomic) IBOutlet UIButton *shirtButtonAttributes;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;


- (IBAction)manButton;
- (IBAction)girlButton;
- (IBAction)skateboardButton;
- (IBAction)bowlingButton;
- (IBAction)joystickButton;
- (IBAction)djButton;
- (IBAction)shirtButton;


@end
