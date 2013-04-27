//
//  ESNCAppDelegate.m
//  ESNC_Renewal_10
//
//  Created by Chansung, Park on 4/26/13.
//  Copyright (c) 2013 Chansung, Park. All rights reserved.
//

#import "ESNCAppDelegate.h"

@implementation ESNCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    UIStoryboard *storyboard = nil;
    self.viewController = [[JASidePanelController alloc] init];
    
    if( [UIScreen mainScreen].bounds.size.height == 568 ) {
        storyboard = [UIStoryboard storyboardWithName:@"iPhone5Storyboard" bundle:[NSBundle mainBundle]];
    } else {
        storyboard = [UIStoryboard storyboardWithName:@"iPhone4Storyboard" bundle:[NSBundle mainBundle]];
    }
    
    self.viewController.centerPanel = [storyboard instantiateInitialViewController];
    self.viewController.leftPanel = [storyboard instantiateViewControllerWithIdentifier:@"sideNavigationViewController"];
    
    self.window.rootViewController = self.viewController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
