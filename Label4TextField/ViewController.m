//
//  ViewController.m
//  Label4TextField
//
//  Created by Iurie Guzun on 2020-06-04.
//  Copyright © 2020 Iurie Guzun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

 NSMutableString *currentValue;
 NSString *minusSymbol;
 NSUInteger currentLength;

@implementation ViewController

@synthesize labelX, labelY;


- (void)viewDidLoad {
    [super viewDidLoad];
   
   currentValue = [NSMutableString stringWithString:@""];
    minusSymbol = [NSString stringWithString:@"-"];
    
  //   NSLog(currentValue);
   
    
    
    UITapGestureRecognizer *tapXAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelXClick:)];
    
    tapXAction.delegate = self;
    tapXAction.numberOfTapsRequired = 1;
    
    UITapGestureRecognizer *tapYAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelYClick:)];
       tapYAction.delegate = self;
       tapYAction.numberOfTapsRequired = 1;
    //Enable the lable UserIntraction
    labelX.userInteractionEnabled = YES;
    labelY.userInteractionEnabled = YES;
    [labelX addGestureRecognizer:tapXAction];
    [labelY addGestureRecognizer:tapYAction];
}
- (void)labelXClick:(UITapGestureRecognizer *)tapGesture {
        NSLog(@"Label X Tapped!");
 
         NSLog(@"%@", currentValue);
         labelX.text = @" X = _";
      //   self.labelX.text = @"%@", currentValue;
        
}
- (void)labelYClick:(UITapGestureRecognizer *)tapGesture {
        NSLog(@"Label Y Tapped!");
}
- (IBAction)buttonBackPressed:(UIButton *)sender {
    
        NSLog(@"Button Delete Tapped!");
        int len = [currentValue length];
    if ([currentValue length]>0)
    {
        NSString *tempValue;
        tempValue = [currentValue substringToIndex:[currentValue length]-1];
        currentValue = [NSMutableString stringWithString: tempValue];
        NSLog(currentValue);
    }
}

- (IBAction)buttonThreePressed:(UIButton *)sender {
   
    NSLog(@"Button 3 Tapped!");
    NSString *firstSymbol;
    currentLength = [currentValue length];
    if (currentLength==0) {
    [currentValue appendString: @"3"];
    } else if ((currentLength==1) && ([[currentValue substringWithRange: NSMakeRange (0, 1)] isEqualToString: minusSymbol])) {
        firstSymbol = [currentValue substringWithRange: NSMakeRange (0, 1)];
        NSLog (@"first symbol = %@", firstSymbol);
      [currentValue appendString: @"3"];
    }
    NSLog(currentValue);
    
}

- (IBAction)buttonTwoPressed:(UIButton *)sender {
    NSLog(@"Button 2 Tapped!");
    [currentValue appendString: @"2"];
     NSLog(currentValue);
}

- (IBAction)buttonOnePressed:(UIButton *)sender {
    NSLog(@"Button 1 Tapped!");
    [currentValue appendString: @"1"];
     NSLog(currentValue);
}

- (IBAction)buttonZeroPressed:(UIButton *)sender {
    NSLog(@"Button 0 Tapped!");
//    NSString *str = [NSString stringWithFormat:@"%@", @"0"];
//    [currentValue appendString: str];
    [currentValue appendString: @"0"];
     NSLog(currentValue);
}

- (IBAction)buttonMinusPressed:(UIButton *)sender {
    NSLog(@"Button - Tapped!");
    [currentValue appendString: @"-"];
     NSLog(currentValue);
}

@end
