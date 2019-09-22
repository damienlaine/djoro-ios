//
//  SetAway.h
//  djoro
//
//  Created by Damien Tsenkoff on 09/09/2014.
//  Copyright (c) 2014 Damien Tsenkoff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SetAway : UIViewController




@property (weak, nonatomic) IBOutlet UIDatePicker *myDatePicker;
@property (weak, nonatomic) IBOutlet UILabel *countDownLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)startCountdown:(id)sender;


@end
