# WSShiningLabel
闪烁的文字，多种闪烁效果



# PhotoShoot
![image](https://github.com/Zws-China/.../blob/master/shiningLabel.gif)


# How To Use

```ruby
#import "WSShiningLabel.h"

WSShiningLabel *label1 = [[WSShiningLabel alloc] init];
label1.frame = CGRectMake(50, 35, 200, 25);
label1.text = @"当保护你的她";
label1.textColor = [UIColor grayColor];
label1.font = [UIFont systemFontOfSize:20];
[label1 startShimmer];                 // 开启闪烁
[self.view addSubview:label1];


WSShiningLabel *label2 = [[WSShiningLabel alloc] init];
label2.frame = CGRectMake(50, 105, 200, 25);
label2.text = @"变成要你保护的她";
label2.textColor = [UIColor grayColor];
label2.font = [UIFont systemFontOfSize:20];
label2.shimmerType = ST_RightToLeft;           // 滚动方向 right to left
label2.durationTime = 1;                     // 滚动时间
label2.shimmerColor = [UIColor orangeColor];   // 高亮颜色
[label2 startShimmer];                         // 开启闪烁
[self.view addSubview:label2];


WSShiningLabel *label3 = [[WSShiningLabel alloc] init];
label3.frame = CGRectMake(50, 175, 200, 25);
label3.text = @"当你远离了家";
label3.textColor = [UIColor grayColor];
label3.font = [UIFont systemFontOfSize:20];
label3.shimmerType = ST_AutoReverse;           // 滚动方向 左右来回
label3.shimmerWidth = 20;                      // 高亮的宽度
label3.shimmerRadius = 20;                     // 阴影的宽度
label3.shimmerColor = [UIColor yellowColor];   // 高亮颜色
[label3 startShimmer];                         // 开启闪烁
[self.view addSubview:label3];


WSShiningLabel *label4 = [[WSShiningLabel alloc] init];
label4.frame = CGRectMake(50, 245, 200, 25);
label4.text = @"努力有了你爱的她";
label4.textColor = [UIColor grayColor];
label4.font = [UIFont systemFontOfSize:20];
label4.shimmerType = ST_ShimmerAll;             //  闪烁
label4.durationTime = 0.8;
label4.shimmerColor = [UIColor redColor];
[label4 startShimmer];
[self.view addSubview:label4];




```