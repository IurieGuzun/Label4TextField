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
 NSMutableString *currentXValue;
 NSMutableString *currentYValue;
 NSMutableString *currentLabel;

 NSString *minusSymbol;
 NSUInteger currentLength;
 NSString *xValue;
 NSString *yValue;

@implementation ViewController

@synthesize labelX, labelY;


- (void)viewDidLoad {
    [super viewDidLoad];
   
    currentValue = [NSMutableString stringWithString:@""];
    currentXValue = [NSMutableString stringWithString:@""];
    currentYValue = [NSMutableString stringWithString:@""];
    currentLabel = [NSMutableString stringWithString:@""];
    minusSymbol = @"-";
    xValue = @"X = ";
    yValue = @"Y = ";
    
    UITapGestureRecognizer *tapXAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelXClick:)];
    
 //   tapXAction.delegate = self;
    tapXAction.numberOfTapsRequired = 1;
    
    UITapGestureRecognizer *tapYAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelYClick:)];
 //      tapYAction.delegate = self;
       tapYAction.numberOfTapsRequired = 1;
    //Enable the lable UserIntraction
    labelX.userInteractionEnabled = YES;
    labelY.userInteractionEnabled = YES;
    [labelX addGestureRecognizer:tapXAction];
    [labelY addGestureRecognizer:tapYAction];
}
- (void)labelXClick:(UITapGestureRecognizer *)tapGesture {
        NSLog(@"Label X Tapped!");
        currentLabel = [NSMutableString stringWithString:xValue];
 
         NSLog(@"%@", currentValue);
   //      labelX.text = @" X = _";
        
}
- (void)labelYClick:(UITapGestureRecognizer *)tapGesture {
        NSLog(@"Label Y Tapped!");
         currentLabel = [NSMutableString stringWithString:yValue];
}
- (IBAction)buttonBackPressed:(UIButton *)sender {
    
        NSLog(@"Button Delete Tapped!");
        [self currentToXY];
        NSUInteger len = [currentValue length];
    if (len>0)
    {
        NSString *tempValue;
        tempValue = [currentValue substringToIndex:[currentValue length]-1];
        currentValue = [NSMutableString stringWithString: tempValue];
        NSLog(@"%@", currentValue);
      }
    [self xYToCurrent];
}

- (IBAction)buttonThreePressed:(UIButton *)sender {
   
    NSLog(@"Button 3 Tapped!");
    NSString* mySymbol = @"3";
    [self insertSymbol:mySymbol];
    
}

- (void) insertSymbol: (NSString*) srt {
   NSString *firstSymbol;
    [self currentToXY];
   currentLength = [currentValue length];
   if (currentLength==0) {
   [currentValue appendString: srt];
   } else if ((currentLength==1) && ([[currentValue substringWithRange: NSMakeRange (0, 1)] isEqualToString: minusSymbol])) {
       firstSymbol = [currentValue substringWithRange: NSMakeRange (0, 1)];
       NSLog (@"first symbol = %@", firstSymbol);
     [currentValue appendString: srt];
   }
   NSLog(@"%@", currentValue);
    [self xYToCurrent];
}

-(void) xYToCurrent{
    if ([currentLabel isEqualToString:xValue]) {
         currentXValue = currentValue;
         labelX.text = [NSString stringWithFormat: @"%@ %@", xValue, currentXValue];

          } else if ([currentLabel isEqualToString:yValue]) {
              currentYValue = currentValue;
         labelY.text = [NSString stringWithFormat: @"%@ %@", yValue, currentYValue];
   }
}

- (void) currentToXY {
    if ([currentLabel isEqualToString:xValue]) {
           currentValue = currentXValue;
       } else if ([currentLabel isEqualToString:yValue]) {
           currentValue = currentYValue;
       }
}

- (IBAction)buttonTwoPressed:(UIButton *)sender {
    NSLog(@"Button 2 Tapped!");
    NSString* mySymbol = @"2";
    [self insertSymbol:mySymbol];
}

- (IBAction)buttonOnePressed:(UIButton *)sender {
    NSLog(@"Button 1 Tapped!");
    NSString* mySymbol = @"1";
    [self insertSymbol:mySymbol];
}

- (IBAction)buttonZeroPressed:(UIButton *)sender {
    NSLog(@"Button 0 Tapped!");
    [self currentToXY];
    currentLength = [currentValue length];
      if (currentLength==0) {
          NSString* mySymbol = @"0";
           [currentValue appendString: mySymbol];
      }
//    labelX.text = [NSString stringWithFormat: @"%@ %@", xValue, currentValue];
    [self xYToCurrent];
}

- (IBAction)buttonMinusPressed:(UIButton *)sender {
    NSLog(@"Button - Tapped!");
    [self currentToXY];
   currentLength = [currentValue length];
   if (currentLength==0) {
    NSString* mySymbol = @"-";
    [currentValue appendString: mySymbol];
   }
    [self xYToCurrent];
}

@end
