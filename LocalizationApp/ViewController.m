//
//  ViewController.m
//  LocalizationApp
//
//  Created by DUY TAN on 31/3/16.
//  Copyright © 2016 DUY TAN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touch:(id)sender {
    // tạo thông báo khi nhấm vào button
     NSString * Messagelocalized = NSLocalizedString(@"BOOK_PURCHASE", @"");
    NSString * Buttonlocalized = NSLocalizedString(@"BUTTON", @"");
    NSString * Titlelocalized = NSLocalizedString(@"TITLE", @"");
    UIAlertController *alert= [UIAlertController alertControllerWithTitle:Titlelocalized message:Messagelocalized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *camera= [UIAlertAction actionWithTitle:Buttonlocalized style:UIAlertActionStyleDestructive handler: ^(UIAlertAction * action){}];
    [alert addAction:camera];
    UIViewController *vc = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    [vc presentViewController:alert animated:YES completion:nil];
    
}
@end
