//
//  ViewController.m
//  IconfontDemo
//
//  Created by liguo.chen on 17/6/29.
//  Copyright © 2017年 Slience. All rights reserved.
//

#import "ViewController.h"
#import "TBCityIconFont.h"
#import "UIImage+TBCityIconFont.h"

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     
     @{NSFontAttributeName:[UIFont systemFontOfSize:18],
       
       NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    self.navigationItem.title = @"iconfont图标的使用";
    
    self.navigationController.navigationBar.translucent = NO;//导航栏呈现半透明状态的属性,NO为不透明,YES为透明
    
    UIButton *leftButtom = [[UIButton alloc]initWithFrame:CGRectMake(10, 0, 30, 30)];
    [leftButtom setImage:[UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e69a", 22, [UIColor whiteColor])] forState:UIControlStateNormal];
    [leftButtom addTarget:self action:@selector(leftItemAction) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftButtom];
    
    UIButton *rightButton = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_WIDTH - 40, 0, 30, 30)];
    [rightButton setImage:[UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e77a", 22, [UIColor whiteColor])] forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(rightItemAction) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    
}

-(void)loadView {
    [super loadView];
    /*
     TBCityIconInfoMake(@"\U0000e62b", 30, [UIColor yellowColor]
     这三个参数中,除了unicode字符需要对应相对的图标,颜色和大小都是自己定义的,可以保证图标不变形.
     */
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 30, 30)];
    [self.view addSubview:imageView];
    imageView.image = [UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e62b", 30, [UIColor yellowColor])];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, CGRectGetMaxY(imageView.frame) + 30, 50, 50)];
    [self.view addSubview:btn];
    [btn setImage:[UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e605", 50, [UIColor blueColor])] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(btn.frame) + 30, SCREEN_WIDTH, 40)];
    [self.view addSubview:label];
    label.font = [UIFont fontWithName:@"iconfont" size:17];
    label.text = @"旅游 \U0000e6a8";
    label.textColor = [UIColor redColor];
    label.textAlignment = NSTextAlignmentCenter;
    
    
}

- (void)leftItemAction {
    NSLog(@"左边按钮点击事件");
}

- (void)rightItemAction {
    NSLog(@"右边按钮点击事件");
}

- (void)btnAction {
    NSLog(@"钱包按钮点击事件");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
