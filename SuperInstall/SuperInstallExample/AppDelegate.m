//
//  AppDelegate.m
//  Tinstall
//
//  Created by fx on 2020/12/15.
//

#import "AppDelegate.h"
#import "ViewController.h"

#import <SuperInstall/SuperInstall.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    [SuperInstall init:@"cxka6g" withSecret:@"123456"];

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [ViewController new];
    [self.window makeKeyAndVisible];
    [SuperInstall init:@"cxka6g" withSecret:@"123456"];
    
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application{
    
}

@end
