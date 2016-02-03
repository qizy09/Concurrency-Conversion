//
//  ViewController.h
//  Concurrency Conversion
//
//  Created by Ziyang Qi on 12/12/15.
//  Copyright © 2015 James Qi. All rights reserved.
//
/* Except for the requirements, I made some extra improvements to this assignment
 * 1. Except for when button is clicked, when the input value is changed in the text filed, my app is gonna update the results automatically
 * 2. Except for the already supported currencies, I also added Chinese Yuan, which was previously not supported by the CRCurrencyRequest API.
 * 3. In this assignment, I obeyed the programming routines described in the video, i.e. make declarations and imports in the ".h" file, rather than in this ".m" file.
 */

#import <UIKit/UIKit.h>
#import <CurrencyRequest/CRCurrencyRequest.h>
#import <CurrencyRequest/CRCurrencyResults.h>
@interface ViewController : UIViewController  <CRCurrencyRequestDelegate>

@property (nonatomic) CRCurrencyRequest *req;
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *currencyLabel1;
@property (weak, nonatomic) IBOutlet UILabel *currencyLabel2;
@property (weak, nonatomic) IBOutlet UILabel *currencyLabel3;
@property (weak, nonatomic) IBOutlet UILabel *currencyOutput1;
@property (weak, nonatomic) IBOutlet UILabel *currencyOutput2;
@property (weak, nonatomic) IBOutlet UILabel *currencyOutput3;
@property (weak, nonatomic) IBOutlet UILabel *currencyLabel0;
@property (weak, nonatomic) IBOutlet UILabel *currencyOutput0;
@property (weak, nonatomic) IBOutlet UISegmentedControl *currencySelector;

- (void) updateOutputs;
- (void)currencyRequest:(CRCurrencyRequest *)req retrievedCurrencies:(CRCurrencyResults *)currencies;

@end

