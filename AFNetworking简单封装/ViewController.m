//
//  ViewController.m
//  AFNetworking简单封装
//
//  Created by Colin on 15-8-31.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "ViewController.h"
#import "CHHTTPTool.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)ButtonClick:(id)sender
{
    __weak typeof(self) weakSelf = self;
    
    // 请求地址
    NSString *requestPath = @"";
    
    // 拼接请求参数
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    parameters[@"imageID"] = @"imageID";
    
    [CHHTTPTool GET:requestPath parameters:parameters success:^(id responseObject)
    {
        NSLog(@"%@", responseObject);
//        weakSelf.imageView.image = responseObject[image];
    } failure:^(NSError *error)
    {
        NSLog(@"%@", error);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
