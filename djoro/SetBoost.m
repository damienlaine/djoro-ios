//
//  SetBoost.m
//  djoro
//
//  Created by Damien Tsenkoff on 08/09/2014.
//  Copyright (c) 2014 Damien Tsenkoff. All rights reserved.
//

#import "SetBoost.h"


@interface SetBoost ()

@end

@implementation SetBoost

@synthesize startButton;
@synthesize countDownLabel;
@synthesize myDatePicker;

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
        [self.myDatePicker addTarget:self action:@selector(datePickerChanged:) forControlEvents:UIControlEventValueChanged];
    
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)datePickerChanged:(UIDatePicker *)datePicker
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm"];
    NSString *strDate = [dateFormatter stringFromDate:datePicker.date];
    self.countDownLabel.text = strDate;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)startCountdown:(id)sender {
    
    startButton.selected = !startButton.selected;
    [startButton setTitle:@"Start" forState:UIControlStateNormal];
    [startButton setTitle:@"Stop" forState:UIControlStateSelected];
    [startButton setTitleColor:[UIColor grayColor] forState:UIControlStateSelected];
}

@end
