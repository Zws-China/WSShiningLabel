//
//  ViewController.m
//  WSShiningLabel
//
//  Created by iMac on 16/11/18.
//  Copyright © 2016年 zws. All rights reserved.
//

#import "ViewController.h"
#import "WSShiningLabel.h"


@interface ViewController ()

@end

@implementation ViewController{
    WSShiningLabel *label1;
    WSShiningLabel *label2;
    WSShiningLabel *label3;
    WSShiningLabel *label4;
}
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    dispatch_async(dispatch_get_main_queue(), ^{
        label1.isPlaying = false;
        label2.isPlaying = false;
        label3.isPlaying = false;
        label4.isPlaying = false;
        [label1 startShimmer];
        [label2 startShimmer];
        [label3 startShimmer];
        [label4 startShimmer];
    });
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:85.0f/255.0f green:85.0f/255.0f blue:85.0f/255.0f alpha:1.0f];
    
    label1 = [[WSShiningLabel alloc] init];
    label1.frame = CGRectMake(50, 35, 200, 25);
    label1.text = @"当保护你的她";
    label1.textColor = [UIColor grayColor];
    label1.font = [UIFont systemFontOfSize:20];
    [label1 startShimmer];                 // 开启闪烁
    [self.view addSubview:label1];
    
    
    label2 = [[WSShiningLabel alloc] init];
    label2.frame = CGRectMake(50, 105, 200, 25);
    label2.text = @"变成要你保护的她";
    label2.textColor = [UIColor grayColor];
    label2.font = [UIFont systemFontOfSize:20];
    label2.shimmerType = ST_RightToLeft;           // 滚动方向 right to left
    label2.durationTime = 1;                     // 滚动时间
    label2.shimmerColor = [UIColor orangeColor];   // 高亮颜色
    [label2 startShimmer];                         // 开启闪烁
    [self.view addSubview:label2];
    
    
    label3 = [[WSShiningLabel alloc] init];
    label3.frame = CGRectMake(50, 175, 200, 25);
    label3.text = @"当你远离了家";
    label3.textColor = [UIColor grayColor];
    label3.font = [UIFont systemFontOfSize:20];
    label3.shimmerType = ST_AutoReverse;
    label3.shimmerWidth = 20;                      // 高亮的宽度
    label3.shimmerRadius = 20;                     // 阴影的宽度
    label3.shimmerColor = [UIColor yellowColor];   // 高亮颜色
    [label3 startShimmer];                         // 开启闪烁
    [self.view addSubview:label3];
    
    
    label4 = [[WSShiningLabel alloc] init];
    label4.frame = CGRectMake(50, 245, 200, 25);
    label4.text = @"努力有了你爱的她";
    label4.textColor = [UIColor grayColor];
    label4.font = [UIFont systemFontOfSize:20];
    label4.shimmerType = ST_ShimmerAll;
    label4.durationTime = 0.8;
    label4.shimmerColor = [UIColor redColor];
    [label4 startShimmer];
    [self.view addSubview:label4];
    

    
}



@end
