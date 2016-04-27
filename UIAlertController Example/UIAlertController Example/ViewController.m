//
//  ViewController.m
//  UIAlertController Example
//
//  Created by test on 11/04/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitButton:(id)sender {
    
    NSString *alertTitle = @"NeoRays Software Solutions";
    
    NSString * alertMessage = @"Enter Detaile Here";
    
    NSString *userName = @"Meheboob";
    
    NSString *password = @"nadaf123";
    
    //NSString *userNameVar;
   // NSString *passwordVar;
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:alertTitle
                                                                   message:alertMessage
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"User Name"; //for User Name
       _userNameVar = textField.text;
        
        NSLog(@"Text field Name value is : %@",_userNameVar);
        textField.secureTextEntry = NO;
    }];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Password"; //for passwords
        _passwordVar = textField.text;
        
        NSLog(@"Text field Pass value is : %@",_passwordVar);
        textField.secureTextEntry = YES;
    }];
    
    UIAlertAction* OKAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * action) {
                                                     
                                                         NSLog(@"Inside OK");
                                                         
                                                         if([_userNameVar isEqualToString:userName ]&&[_passwordVar isEqualToString:password])
                                                         {
//                                                             UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"User Varification"
//                                                                                                                            message:@"Wel Come"
//                                                                                                                     preferredStyle:UIAlertControllerStyleAlert];
                                                             NSLog(@"Validation Successfull");
                                                         }
                                                         
                                                         else{
                                                         NSLog(@"Validation Failed");
                                                         
                                                         }
                                                     
                                                     }];
    
//    UIAlertAction* CancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel
//                                                         handler:^(UIAlertAction * action) {
//                                                         NSLog(@"Inside Cancel");
//                                                         
//                                                         }];
  [alert addAction:OKAction];
  //  [alert addAction:CancelAction];
    
    
   
    
    
    [self presentViewController:alert animated:YES completion:nil];
    }
@end
