//
//  ViewController.m
//  djoro
//
//  Created by Damien Tsenkoff on 02/08/2014.
//  Copyright (c) 2014 Damien Tsenkoff. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    
    // Do any additional setup after loading the view, typically from a nib.
    
    [_slider setValue:20];
    _TempLabel.text = @"20";
    
    
    [_sliderView setHidden:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)awayPressed:(id)sender {
    _awayButton.selected = !_awayButton.selected;
    [_awayButton setTitle:@"Absent" forState:UIControlStateNormal];
    [_awayButton setTitle:@"Je suis là" forState:UIControlStateSelected];
}


- (IBAction)boostPressed:(id)sender {
    _boostButton.selected = !_boostButton.selected;
    [_boostButton setTitle:@"Boost" forState:UIControlStateNormal];
    [_boostButton setTitle:@"Stop Boost" forState:UIControlStateSelected];
    if (_boostButton.selected) {
        [_modeView setHidden: YES];
    } else {
        [_modeView setHidden: NO];
    }
}


- (IBAction)sliderChanged:(id)sender {
   
    int slidervalue = [_slider value];
    _TempLabel.text = [NSString stringWithFormat:@"%i", slidervalue];
}


- (IBAction)switchPressed:(id)sender {
    
    if ([_sliderView isHidden] == YES) {
        [_sliderView setHidden:NO];
    }
    else {
        [_sliderView setHidden:YES];
    }
}

- (IBAction)unwindToMenu:(UIStoryboardSegue *)segue
{
    
}

@end

