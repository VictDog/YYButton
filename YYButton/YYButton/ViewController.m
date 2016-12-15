//
//  ViewController.m
//  YYButton
//
//  Created by Mac on 2016/12/15.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+ImageTitleSpacing.h" // 导入分类头文件
#import "YYButton.h" // 导入自定义button头文件

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createButton];
    [self createButton1];
}

#pragma mark - 两种方法的优缺点
/**
 - 第一种通过分类的方式设置按钮非常方便，只需要一行代码就足够了，不需要我们自己计算UIEngeInsetsMake，适用于纯代码创建的按钮。 如果是Xib创建的按钮就用不了。
 
 - 第二种通过继承的方式重写layoutSubviews的方式设置按钮好处是既适用于纯代码创建的按钮，也适用于Xib创建的按钮，但是这种方法有一定的局限性，它只适用于同一类型的按钮。一类比如我一个界面中有几种不同类型的按钮，这时候就需要我们创建不同的继承UIButton 的按钮类，在layoutSubviews设置不同的位置关系。这样就相对复杂了。
 */

#pragma mark - 使用分类创建自定义按钮
- (void)createButton {
    // 这里为了方便就不一一创建按钮了，都是相同的代码，我们使用for循环创建
    NSArray *titles = @[@"image在上，title在下", @"image在左，title在右", @"image在右，title在左",@"image在下，title在上"];
    for (int i = 0; i < 4; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(70,44+100*i, 180, 80);
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor lightGrayColor]];
        button.titleLabel.font = [UIFont systemFontOfSize:12];
        [button setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d",i+1]] forState:UIControlStateNormal];
        [button setTitle:titles[i] forState:UIControlStateNormal];
        
        switch (i) {
            case 0: // image在上，title在下
                [button layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleTop imageTitleSpace:10];
                break;
            case 1: // image在左，title在右
                [button layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleLeft imageTitleSpace:5];
                break;
            case 2: // image在右，title在
                [button layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleRight imageTitleSpace:5];
                break;
            case 3: // image在下，title在上
                [button layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleBottom imageTitleSpace:10];
                break;
                
            default:
                break;
        }
        [self.view addSubview:button];
    }
}

#pragma mark - 使用继承创建自定义按钮
- (void)createButton1 {
    YYButton *button = [[YYButton alloc] init];
    button.frame = CGRectMake(70, 44+100*4, 150, 100);
    [button setBackgroundColor:[UIColor orangeColor]];
    [button setTitle:@"使用继承创建" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
