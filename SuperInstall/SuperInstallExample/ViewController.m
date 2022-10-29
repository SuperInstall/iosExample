//
//  ViewController.m
//  Tinstall
//
//  Created by fx on 2020/12/15.
//

#import "ViewController.h"
#import <SuperInstall/SuperInstall.h>

@interface ViewController ()

@property (nonatomic, strong) UILabel *lab;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//     Do any additional setup after loading the view.
    NSLog(@"OP begin");
    self.lab = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 200, 50)];
    [self.view addSubview:self.lab];
    
//    [TInstall setHost:@"https://54youyuan.cn/"];
    [SuperInstall getInstall:^(NSString * _Nonnull channel, NSDictionary * _Nullable data) {
        
    }];
    
    [SuperInstall reportRegisterd];
    [SuperInstall reportRegisterd:@"1111"];


}


@end
