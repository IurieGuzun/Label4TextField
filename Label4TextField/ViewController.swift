////
////  ViewController.swift
////  Label4TextField
////
////  Created by Iurie Guzun on 2021-01-18.
////  Copyright © 2021 Iurie Guzun. All rights reserved.
////
//import UIKit
//
//class ViewController: UIViewController {
//    //  - (void) insertSymbol: (NSString*) srt;
//    // NSMutableString *currentValue;
//
//    @IBOutlet weak var labelX: UILabel!
//    @IBOutlet weak var labelY: UILabel!
//
//    @IBAction func buttonMinusPressed(_ sender: UIButton) {
//    }
//
//    @IBAction func buttonZeroPressed(_ sender: UIButton) {
//    }
//
//    @IBAction func buttonOnePressed(_ sender: UIButton) {
//    }
//
//    @IBAction func buttonTwoPressed(_ sender: UIButton) {
//    }
//
//    @IBAction func buttonThreePressed(_ sender: UIButton) {
//    }
//
//    @IBAction func buttonBackPressed(_ sender: UIButton) {
//    }
//}
//
//var timer: Timer?
//var currentValue: String?
//var currentXValue: String?
//var currentYValue: String?
//var currentLabel: String?
//var cursorSymbol: String?
//var minusSymbol: String?
//var currentLength = 0
//var xValue: String?
//var yValue: String?
//var blinkStatus = false
//
//
//func viewDidLoad() {
//    super.viewDidLoad()
//
//    currentValue = ""
//    currentXValue = ""
//    currentYValue = ""
//    currentLabel = ""
//    minusSymbol = "-"
//    cursorSymbol = "_"
//    xValue = "X = "
//    yValue = "Y = "
//
//    let tapXAction = UITapGestureRecognizer(target: self, action: #selector(labelXClick(_:)))
//    tapXAction.numberOfTapsRequired = 1
//    let tapYAction = UITapGestureRecognizer(target: self, action: #selector(labelYClick(_:)))
//    tapYAction.numberOfTapsRequired = 1
//
//    labelX.isUserInteractionEnabled = true
//    labelY.isUserInteractionEnabled = true
//    labelX.addGestureRecognizer(tapXAction)
//    labelY.addGestureRecognizer(tapYAction)
//
//    timer = Timer.scheduledTimer(
//        timeInterval: TimeInterval(0.2),
//        target: self,
//        selector: #selector(blink),
//        userInfo: nil,
//        repeats: true)
//}
//
//func blink() {
//    print("Blink Accessed!!!")
//
//    if blinkStatus == false {
//        if currentLabel == xValue {
//            labelX.text = "\(xValue) \(currentXValue)\(cursorSymbol)"
//        } else if currentLabel == yValue {
//            labelY.text = "\(yValue) \(currentYValue)\(cursorSymbol)"
//        }
//        blinkStatus = true
//    } else {
//        labelX.text = "\(xValue) \(currentXValue)"
//        labelY.text = "\(yValue) \(currentYValue)"
//        blinkStatus = false
//    }
//}
//
//- (void)labelXClick:(UITapGestureRecognizer *)tapGesture {
//        NSLog(@"Label X Tapped!");
//        currentLabel = [NSMutableString stringWithString:xValue];
//        NSLog(@"%@", currentValue);
//}
//
//- (void)labelYClick:(UITapGestureRecognizer *)tapGesture {
////    [timer invalidate];
//    NSLog(@"Label Y Tapped!");
//         currentLabel = [NSMutableString stringWithString:yValue];
//}
//
//- (IBAction)buttonBackPressed:(UIButton *)sender {
//
//        NSLog(@"Button Delete Tapped!");
//        [self currentToXY];
//        NSUInteger len = [currentValue length];
//    if (len>0)
//    {
//        NSString *tempValue;
//        tempValue = [currentValue substringToIndex:[currentValue length]-1];
//        currentValue = [NSMutableString stringWithString: tempValue];
//        NSLog(@"%@", currentValue);
//      }
//    [self xYToCurrent];
//}
//
//- (IBAction)buttonThreePressed:(UIButton *)sender {
//    NSLog(@"Button 3 Tapped!");
//    NSString* mySymbol = @"3";
//    [self insertSymbol:mySymbol];
//}
//
//- (void) insertSymbol: (NSString*) srt {
//   NSString *firstSymbol;
//    [self currentToXY];
//   currentLength = [currentValue length];
//   if (currentLength==0) {
//   [currentValue appendString: srt];
//   } else if ((currentLength==1) && ([[currentValue substringWithRange: NSMakeRange (0, 1)] isEqualToString: minusSymbol])) {
//       firstSymbol = [currentValue substringWithRange: NSMakeRange (0, 1)];
//       NSLog (@"first symbol = %@", firstSymbol);
//     [currentValue appendString: srt];
//   }
//   NSLog(@"%@", currentValue);
//    [self xYToCurrent];
//}
//
//-(void) xYToCurrent{
//    if ([currentLabel isEqualToString:xValue]) {
//         currentXValue = currentValue;
//         labelX.text = [NSString stringWithFormat: @"%@ %@", xValue, currentXValue];
//          } else if ([currentLabel isEqualToString:yValue]) {
//              currentYValue = currentValue;
//          labelY.text = [NSString stringWithFormat: @"%@ %@", yValue, currentYValue];
//   }
//}
//
//- (void) currentToXY {
//    if ([currentLabel isEqualToString:xValue]) {
//           currentValue = currentXValue;
//       } else if ([currentLabel isEqualToString:yValue]) {
//           currentValue = currentYValue;
//       }
//}
//
//- (IBAction)buttonTwoPressed:(UIButton *)sender {
//    NSLog(@"Button 2 Tapped!");
//    NSString* mySymbol = @"2";
//    [self insertSymbol:mySymbol];
//}
//
//- (IBAction)buttonOnePressed:(UIButton *)sender {
//    NSLog(@"Button 1 Tapped!");
//    NSString* mySymbol = @"1";
//    [self insertSymbol:mySymbol];
//}
//
//- (IBAction)buttonZeroPressed:(UIButton *)sender {
//    NSLog(@"Button 0 Tapped!");
//    [self currentToXY];
//    currentLength = [currentValue length];
//      if (currentLength==0) {
//          NSString* mySymbol = @"0";
//           [currentValue appendString: mySymbol];
//      }
//    [self xYToCurrent];
//}
//
//- (IBAction)buttonMinusPressed:(UIButton *)sender {
//    NSLog(@"Button - Tapped!");
//    [self currentToXY];
//   currentLength = [currentValue length];
//   if (currentLength==0) {
//    NSString* mySymbol = @"-";
//    [currentValue appendString: mySymbol];
//   }
//    [self xYToCurrent];
//}
//
//@end
