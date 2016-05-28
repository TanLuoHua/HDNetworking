//
//  ViewController.m
//  HDNetworking
//
//  Created by HeDong on 16/5/27.
//  Copyright © 2016年 hedong. All rights reserved.
//

#import "ViewController.h"
#import "HDNetworking.h"
#import "HDDefine.h"

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

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [[HDNetworking sharedHDNetworking] downLoadWithURL:@"http://sc.111ttt.com/up/mp3/304296/937161E63A1D57484158C7464D7B50B7.mp3" progress:^(NSProgress * _Nullable progress) {
        
        HDLog(@"progress == %@", progress);
        HDLog(@"%lf", 1.0 * progress.completedUnitCount / progress.totalUnitCount);
        
    } destination:^NSURL * _Nullable(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        
        HDLog(@"targetPath == %@, response == %@", targetPath, response);
        
        // 设置下载路径,通过沙盒获取缓存地址,最后返回NSURL对象
        NSString *filePath = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"hhhh.mp3"];
        return [NSURL fileURLWithPath:filePath];
        
    } downLoadSuccess:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath) {
        
        // 下载完成调用的方法
        HDLog(@"下载完成\n%@--%@",response, filePath);
        
    } failure:^(NSError * _Nonnull error) {
        
    }];
}

@end
