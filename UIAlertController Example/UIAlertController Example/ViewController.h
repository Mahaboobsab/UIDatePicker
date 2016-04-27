//
//  ViewController.h
//  UIAlertController Example
//
//  Created by test on 11/04/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)submitButton:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *labelField;
@property NSString *userNameVar;
@property NSString *passwordVar;
@end

