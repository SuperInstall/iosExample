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
    [SuperInstall init:@"cym56m" withSecret:@"cef8a903df3170937d642f1c1958f3aa"];
    [SuperInstall getInstall:^(NSString * _Nonnull channel, NSDictionary * _Nullable data) {
        NSLog(@"params is %@",data);
    }];
    NSLog(@"init key cym56m");
    
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application{
    
}

@end
