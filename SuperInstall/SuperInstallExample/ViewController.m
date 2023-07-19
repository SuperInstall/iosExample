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
        NSMutableDictionary *d = [[NSMutableDictionary alloc] initWithDictionary:data];
        [d setValue:channel forKey:@"channel"];
        
        NSError *error;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:d options:NSJSONWritingPrettyPrinted error:&error];
        NSString *jsonString;
        
        if (!jsonData) {
            NSLog(@"%@",error);
        } else {
            jsonString = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
        }
        NSMutableString *mutStr = [NSMutableString stringWithString:jsonString];
        NSRange range = {0,jsonString.length};

            //去掉字符串中的空格
        [mutStr replaceOccurrencesOfString:@" " withString:@"" options:NSLiteralSearch range:range];

        NSRange range2 = {0,mutStr.length};

            //去掉字符串中的换行符
        [mutStr replaceOccurrencesOfString:@"\n" withString:@"" options:NSLiteralSearch range:range2];
        
        
        
    }];
    
    NSString * host=@"";
    NSArray *listItems = [host componentsSeparatedByString:@","];
    
//    if(listItems.count>0)
//    [SuperInstall setHosts:listItems];
    
//    [SuperInstall reportRegisterd];
//    [SuperInstall reportRegisterd:@"1111"];
    

}


@end
