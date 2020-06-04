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

@implementation ViewController

@synthesize labelX, labelY;

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
}
- (void)labelYClick:(UITapGestureRecognizer *)tapGesture {
        NSLog(@"Label Y Tapped!");
}
- (IBAction)buttonBackPressed:(UIButton *)sender {
}

- (IBAction)buttonThreePressed:(UIButton *)sender {
}

- (IBAction)buttonTwoPressed:(UIButton *)sender {
}

- (IBAction)buttonOnePressed:(UIButton *)sender {
}

- (IBAction)buttonZeroPressed:(UIButton *)sender {
}

- (IBAction)buttonMinusPressed:(UIButton *)sender {
}

@end
