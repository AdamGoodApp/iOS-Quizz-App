//
//  ARViewController.m
//  QuizzApp
//
//  Created by Rais on 21/05/2014.
//  Copyright (c) 2014 AdamGoodApp. All rights reserved.
//

#import "ARViewController.h"
#import <FlatUIKit/FlatUIKit.h>
#import <CoreText/CoreText.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ARViewController ()

@end

@implementation ARViewController

int score = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)manButton {
    NSLog(@"Man button touched");
    [self.manButtonAttributes setImage:[UIImage imageNamed:@"mancorrect.png"] forState:UIControlStateNormal];
    score += 1;
    NSString* scoreString = [NSString stringWithFormat:@"%i", score];
    self.scoreLabel.text = [@"Correct " stringByAppendingString: scoreString];
    
    //Get the filename of the sound file:
    
    NSString *path = [NSString stringWithFormat:@"%@%@", [[NSBundle mainBundle] resourcePath], @"/yay.wav"];
    
    SystemSoundID soundID;
    
    NSURL *filePath = [NSURL fileURLWithPath:path isDirectory:NO];
    
    //Use audio sevices to create the sound
    
    AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(filePath), &soundID);
    
    //Use audio services to play the sound
    
    AudioServicesPlaySystemSound(soundID);
    
}

- (IBAction)girlButton {
    NSLog(@"Girl button touched");
    AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
    [self.girlButtonAttributes setImage:[UIImage imageNamed:@"girlincorrect.png"] forState:UIControlStateNormal];
    score -= 1;
    NSString* scoreString = [NSString stringWithFormat:@"%i", score];
    self.scoreLabel.text = [@"Wrong " stringByAppendingString: scoreString];
}

- (IBAction)skateboardButton {
    
    NSLog(@"Skatebosrd button touched");
    [self.skateboardButtonAttributes setImage:[UIImage imageNamed:@"skateboardcorrect.png"] forState:UIControlStateNormal];
    score += 1;
    NSString* scoreString = [NSString stringWithFormat:@"%i", score];
    self.scoreLabel.text = [@"Correct " stringByAppendingString: scoreString];
    
    //Get the filename of the sound file:
    
    NSString *path = [NSString stringWithFormat:@"%@%@", [[NSBundle mainBundle] resourcePath], @"/yay.wav"];
    
    SystemSoundID soundID;
    
    NSURL *filePath = [NSURL fileURLWithPath:path isDirectory:NO];
    
    //Use audio sevices to create the sound
    
    AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(filePath), &soundID);
    
    //Use audio services to play the sound
    
    AudioServicesPlaySystemSound(soundID);
    
}

- (IBAction)bowlingButton {
    NSLog(@"Bowling button touched");
    AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
    [self.bowlingButtonAttributes setImage:[UIImage imageNamed:@"bowlingincorrect.png"] forState:UIControlStateNormal];
    score -= 1;
    NSString* scoreString = [NSString stringWithFormat:@"%i", score];
    self.scoreLabel.text = [@"Wrong " stringByAppendingString: scoreString];
}

- (IBAction)joystickButton {
    
    
    NSLog(@"Joystick button touched");
    [self.joystickButtonAttributes setImage:[UIImage imageNamed:@"joystickcorrect.png"] forState:UIControlStateNormal];
    score += 1;
    NSString* scoreString = [NSString stringWithFormat:@"%i", score];
    self.scoreLabel.text = [@"Correct " stringByAppendingString: scoreString];
    
    //Get the filename of the sound file:
    
    NSString *path = [NSString stringWithFormat:@"%@%@", [[NSBundle mainBundle] resourcePath], @"/yay.wav"];
    
    SystemSoundID soundID;
    
    NSURL *filePath = [NSURL fileURLWithPath:path isDirectory:NO];
    
    //Use audio sevices to create the sound
    
    AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(filePath), &soundID);
    
    //Use audio services to play the sound
    
    AudioServicesPlaySystemSound(soundID);

    
}

- (IBAction)djButton {
    
    
    NSLog(@"dj button touched");
    [self.djButtonAttributes setImage:[UIImage imageNamed:@"djcorrect.png"] forState:UIControlStateNormal];
    score += 1;
    NSString* scoreString = [NSString stringWithFormat:@"%i", score];
    self.scoreLabel.text = [@"Correct " stringByAppendingString: scoreString];
    
    //Get the filename of the sound file:
    
    NSString *path = [NSString stringWithFormat:@"%@%@", [[NSBundle mainBundle] resourcePath], @"/yay.wav"];
    
    SystemSoundID soundID;
    
    NSURL *filePath = [NSURL fileURLWithPath:path isDirectory:NO];
    
    //Use audio sevices to create the sound
    
    AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(filePath), &soundID);
    
    //Use audio services to play the sound
    
    AudioServicesPlaySystemSound(soundID);

    
}

- (IBAction)shirtButton {
    
    NSLog(@"Shirt button touched");
    AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
    [self.shirtButtonAttributes setImage:[UIImage imageNamed:@"shirtincorrect.png"] forState:UIControlStateNormal];
    score -= 1;
    NSString* scoreString = [NSString stringWithFormat:@"%i", score];
    self.scoreLabel.text = [@"Wrong " stringByAppendingString: scoreString];

    
}




@end
