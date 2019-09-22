//
//  ViewController.h
//  djoro
//
//  Created by Damien Tsenkoff on 02/08/2014.
//  Copyright (c) 2014 Damien Tsenkoff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController



@property (weak, nonatomic) IBOutlet UIView *modeView;
@property (weak, nonatomic) IBOutlet UIImageView *modeImage;
@property (weak, nonatomic) IBOutlet UIButton *awayButton;
@property (weak, nonatomic) IBOutlet UIButton *boostButton;
@property (weak, nonatomic) IBOutlet UILabel *modeLabel;
@property (weak, nonatomic) IBOutlet UIView *sliderView;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *TempLabel;



- (IBAction)awayPressed:(id)sender;
- (IBAction)boostPressed:(id)sender;
- (IBAction)sliderChanged:(id)sender;
- (IBAction)switchPressed:(id)sender;
- (IBAction)unwindToMenu:(UIStoryboardSegue *)segue;


@end

