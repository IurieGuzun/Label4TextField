//
//  ViewController.h
//  Label4TextField
//
//  Created by Iurie Guzun on 2020-06-04.
//  Copyright © 2020 Iurie Guzun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelX;
@property (weak, nonatomic) IBOutlet UILabel *labelY;


- (IBAction)buttonMinusPressed:(UIButton *)sender;
- (IBAction)buttonZeroPressed:(UIButton *)sender;
- (IBAction)buttonOnePressed:(UIButton *)sender;
- (IBAction)buttonTwoPressed:(UIButton *)sender;
- (IBAction)buttonThreePressed:(UIButton *)sender;
- (IBAction)buttonBackPressed:(UIButton *)sender;



@end

