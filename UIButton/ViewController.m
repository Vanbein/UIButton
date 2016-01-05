//
//  ViewController.m
//  UIButton
//
//  Created by 王斌 on 16/1/5.
//  Copyright © 2016年 Changhong electric Co., Ltd. All rights reserved.
//

#import "ViewController.h"

//类的扩展  匿名类别

@interface ViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation ViewController

//viewDidLoad 对显示的界面进行布局
- (void)viewDidLoad {
    [super viewDidLoad];
    //如果不用storyboard拖控件，则在这里写代码实现
    //创建一个按钮 创建->设置属性->显示
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    //设置按钮属性
    
    //位置和大小
    //    button.frame = CGRectMake(320/2 - 100/2, 300, 100, 50);
    [button setFrame:CGRectMake(320/2 - 100/2, 300, 100, 50)]; //建议方式
    
    //显示的标题 和 标题颜色
    //正常显示
    [button setTitle:@"正常状态" forState:UIControlStateNormal];
    //按住高亮显示
    [button setTitle:@"按下高亮" forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    
    //背景颜色
    [button setBackgroundColor:[UIColor orangeColor]]; //建议方式
    //button.backgroundColor = [UIColor orangeColor];
    
    //背景图
    //    [button setBackgroundImage:[UIImage imageNamed:@"play_button"] forState:UIControlStateNormal];
    
    //内部图片
    //[button setImage:[UIImage imageNamed:@"play_button"] forState:UIControlStateNormal];
    
    //设置按钮按下会发光
    button.showsTouchWhenHighlighted = NO; //YES显示，NO不显示
    
    //圆角button
    button.layer.cornerRadius = 5.0;
    button.layer.masksToBounds = YES;
    
    
    //设置按钮内部图片间距和标题间距
    UIEdgeInsets insets;
    insets.top = insets.bottom = insets.right = insets.left = 5;
    // 设置按钮内部图片间距
    //button.contentEdgeInsets = insets;
    // 标题间距
    //button.titleEdgeInsets = insets;
    
    //给按钮添加点击事件  什么时候被按？按下之后干嘛？
    /*
     slef  按钮的事件发生后将要执行的方法/动作在哪里
     @selector(buttonDidClicked:)  执行的方法，类似函数指针，指向一个方法buttonDidClicked
     UIControlEventTouchUpInside  触发的事件
     */
    [button addTarget:self action:@selector(buttonDidClicked:) forControlEvents:UIControlEventTouchUpInside];
    //移除事件
    //    [button removeTarget:self action:@selector(buttonDidClicked:) forControlEvents:UIControlEventTouchUpInside];
    //    [button removeTarget:nil action:nil forControlEvents:UIControlEventTouchUpInside];
    
    //将按钮添加到当前的这个视图中
    [self.view addSubview:button];
    
    //创建一个Label，用来显示文本信息
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(50, 150, 200, 50)];
    //设置显示的文本内容
    //[_label setText:@"The UILabel class implements a read-only text view. You can use this class to draw one or multiple lines of static text, such as those you might use to identify other parts of your user interface."];
    //设置背景色
    [_label setBackgroundColor:[UIColor lightGrayColor]];
    //设置字体对齐方式 中心对齐
    [_label setTextAlignment:NSTextAlignmentCenter];
    //设置字体颜色
    [_label setTextColor:[UIColor blueColor]];
    //设置多行显示：0 表示有多少行就显示多少行；>0 数字为几就显示多少行，显示不了的内容用省略号表示
    [_label setNumberOfLines:0];
    //设置换行方式
    [_label setLineBreakMode:NSLineBreakByWordWrapping];
    //设置字体和大小
    [_label setFont:[UIFont fontWithName:@"Menlo" size:16]];
    
    //显示Label
    [self.view addSubview:_label];
    
    
    
}
- (void)buttonDidClicked:(UIButton *)sender{
    //NSLog(@"%@ 好痛",sender.titleLabel.text);
    self.label.text = sender.titleLabel.text;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
