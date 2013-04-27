//
//  ESNCAppDelegate.h
//  ESNC_Renewal_10
//
//  Created by Chansung, Park on 4/26/13.
//  Copyright (c) 2013 Chansung, Park. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JASidePanelController.h"

@interface ESNCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) JASidePanelController *viewController;    //side navigation controller

@end
