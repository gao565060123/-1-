//
//  BgColor.m
//  图片一般处理
//
//  Created by mybook on 16/9/9.
//  Copyright © 2016年 石塔Mr.GC. All rights reserved.
//


#import "BgColor.h"

@interface BgColor ()
@property (nonatomic, strong)UIImageView *backImageView;
@end

@implementation BgColor

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    
    [self imageWithBgColor];
}


/**
 *  1 根据颜色,返回这个颜色的iamge
 */
- (void)imageWithBgColor
{
    _backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [self.view addSubview:_backImageView];
    _backImageView.image = [UIImage imageWithBgColor:[UIColor redColor]];
}



///**
// *  根据颜色,返回这个颜色的iamge
// *
// *  @param color 你想要的颜色
// *
// *  @return 带颜色的image
// */
//+(UIImage *)imageWithBgColor:(UIColor *)color;

@end
