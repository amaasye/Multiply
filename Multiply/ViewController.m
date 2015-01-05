//
//  ViewController.m
//  Multiply
//
//  Created by Syed Amaanullah on 1/5/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *multiplierLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UISlider *sliderValue;
@property (weak, nonatomic) IBOutlet UISegmentedControl *operatorSegmentControl;

@property int result;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}


- (IBAction)onCalculateButtonPressed:(id)sender {

    int inputValue = [self.numberTextField.text intValue];
    int multiplierValue = [self.multiplierLabel.text intValue];

    //checking operator function to find result via segmented index
    if (self.operatorSegmentControl.selectedSegmentIndex == 0) {
        self.result = inputValue * multiplierValue;
    }
    if (self.operatorSegmentControl.selectedSegmentIndex == 1) {
        self.result = inputValue / multiplierValue;

    }

    //sets background color based on result
    if (self.result >= 20) {
        self.view.backgroundColor = [UIColor greenColor];
    }
    else {
        self.view.backgroundColor = [UIColor whiteColor];
    }

    //modulo practice, and working with else if
    if (self.result % 5 == 0 && self.result % 3 == 0) {
        self.answerLabel.text = @"fizzbuzz";
    }
    else if (self.result % 3 == 0) {
        self.answerLabel.text = @"fizz";
    }
    else if (self.result % 5 == 0) {
        self.answerLabel.text = @"buzz";
    }
    else  {
        self.answerLabel.text = [NSString stringWithFormat:@"%i", self.result];
    }
}


- (IBAction)onSliderValueChanged:(id)sender {
    int newSliderValue = (int)self.sliderValue.value;
    self.multiplierLabel.text = [NSString stringWithFormat:@"%i", newSliderValue];

}



@end
