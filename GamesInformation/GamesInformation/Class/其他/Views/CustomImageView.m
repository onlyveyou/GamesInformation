//
//  CustomImageView.m
//  GamesInformation
//
//  Created by 千锋 on 16/1/7.
//  Copyright (c) 2016年 onlyveyou. All rights reserved.
//

#import "CustomImageView.h"

@implementation CustomImageView

-(void)setRadius:(CGFloat)radius{
    
    self.layer.cornerRadius =radius;
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
