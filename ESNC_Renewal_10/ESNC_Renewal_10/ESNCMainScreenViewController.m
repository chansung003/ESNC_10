//
//  ESNCMainScreenViewController.m
//  ESNC_Renewal_10
//
//  Created by Chansung, Park on 4/27/13.
//  Copyright (c) 2013 Chansung, Park. All rights reserved.
//

#import "ESNCAppDelegate.h"
#import "ESNCMainScreenViewController.h"

@interface ESNCMainScreenViewController ()

@end

@implementation ESNCMainScreenViewController

- (IBAction)menuButtonClicked:(UIButton *)sender {
    ESNCAppDelegate *appDelegate = (ESNCAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    [appDelegate.viewController showLeftPanelAnimated:YES];
}

@end
