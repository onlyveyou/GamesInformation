//
//  TabBarViewController.m
//  GamesInformation
//
//  Created by 千锋 on 16/1/7.
//  Copyright (c) 2016年 onlyveyou. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self customNavigetionItem];
    // Do any additional setup after loading the view.
}
//自定义NavigetionItem
-(void)customNavigetionItem{
    UIBarButtonItem * leftBar =[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"menu"] style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonClicked:)];
    UIBarButtonItem * rightBar = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"top_navigation_menuicon"] style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonClicked:)];
    self.navigationItem.leftBarButtonItem = leftBar;
    self.navigationItem.rightBarButtonItem = rightBar;

}

#pragma mark - 点击方法实现
-(void)leftBarButtonClicked:(UIBarButtonItem *)sender{
    [self presentLeftMenuViewController:self.sideMenuViewController.leftMenuViewController];


}
-(void)rightBarButtonClicked:(UIBarButtonItem *)sender{
    [self presentRightMenuViewController:self.sideMenuViewController.rightMenuViewController];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
