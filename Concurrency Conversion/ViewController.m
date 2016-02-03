//
//  ViewController.m
//  Concurrency Conversion
//
//  Created by Ziyang Qi on 12/12/15.
//  Copyright © 2015 James Qi. All rights reserved.
//
/* Except for the requirements, I made some extra improvements to this assignment
 * 1. Except for when button is clicked, when the input value is changed in the text filed, my app is gonna update the results automatically
 * 2. Except for the already supported currencies, I also added Chinese Yuan, which was previously not supported by the CRCurrencyRequest API.
 * 3. In this assignment, I obeyed the programming routines described in the video, i.e. make declarations and imports in the ".h" file, rather than in this ".m" file.
 * 4. As the assignment description requires, I added another Segment Controller consisting another 3 currencies, GBP, CZK, DKK. Changes to the Input Field, segment Controller and the Button will update the selected currency output also.
 */

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertButtonTapped:(id)sender {
    [self updateOutputs];
}
// Except for when button is clicked, when the input value is changed in the text filed, my app is gonna update the results automatically
- (IBAction)inputFieldChanged:(id)sender {
    [self updateOutputs];
}
- (IBAction)selectorChanged:(id)sender {
    NSArray * constants = [NSArray arrayWithObjects: @"GBP", @"CZK", @"DKK", nil];
    self.currencyLabel0.text = constants[self.currencySelector.selectedSegmentIndex];
    [self updateOutputs];
}

- (void) updateOutputs{
    self.convertButton.enabled = NO;
    self.req = [[CRCurrencyRequest alloc] init];
    self.req.delegate = self;
    [self.req start];
}

- (void)currencyRequest:(CRCurrencyRequest *)req
    retrievedCurrencies:(CRCurrencyResults *)currencies{
    self.convertButton.enabled = YES;
    double inputValue = [self.inputField.text floatValue];
    self.currencyOutput1.text = [NSString stringWithFormat:@"%.2f", inputValue * currencies.CNY];
    self.currencyOutput2.text = [NSString stringWithFormat:@"%.2f", inputValue * currencies.EUR];
    self.currencyOutput3.text = [NSString stringWithFormat:@"%.2f", inputValue * currencies.JPY];
    self.currencyOutput0.text = [NSString stringWithFormat:@"%.2f", inputValue * [[currencies valueForKey:self.currencyLabel0.text] floatValue]];
}

@end
