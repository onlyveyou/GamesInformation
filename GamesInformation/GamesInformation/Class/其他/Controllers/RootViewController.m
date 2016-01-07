//
//  RootViewController.m
//  GamesInformation
//
//  Created by 千锋 on 16/1/7.
//  Copyright (c) 2016年 onlyveyou. All rights reserved.
//

#import "RootViewController.h"
#import "LeftViewController.h"
#import "RightViewController.h"
#import "TabBarViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

-(void)awakeFromNib{
    //添加视图
    //UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    TabBarViewController *tabBarVC = [self.storyboard instantiateViewControllerWithIdentifier:@"TabBarViewController"];
    UINavigationController *navi =[[UINavigationController alloc]initWithRootViewController:tabBarVC];
    LeftViewController * leftVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LeftViewController"];
    RightViewController * rightVC = [self.storyboard instantiateViewControllerWithIdentifier:@"RightViewController"];
    
    self.contentViewController = navi;
    self.leftMenuViewController = leftVC;
    self.rightMenuViewController = rightVC;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSideMnu];

    
    
    // Do any additional setup after loading the view.
}
-(void)setupSideMnu{

       //设置侧滑属性
        self.scaleContentView = NO;
        self.scaleMenuView = NO;
        self.contentViewShadowEnabled = YES;
    

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
