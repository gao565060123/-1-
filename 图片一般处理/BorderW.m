//
//  BorderW.m
//  图片一般处理
//
//  Created by mybook on 16/9/9.
//  Copyright © 2016年 石塔Mr.GC. All rights reserved.
//


#import "BorderW.h"

@interface BorderW ()
@property (nonatomic, strong)UIImageView *backImageView;
@end

@implementation BorderW

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    [self imageWithBorderW];
}

/**
 *  生成带边框的image
 */
- (void)imageWithBorderW
{
    _backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 100, 200,  200)];
    [self.view addSubview:_backImageView];
    UIImage *oldImage = [UIImage imageNamed:@"pic.jpg"];
    _backImageView.image = oldImage;
//    _backImageView.layer.borderWidth = 10.f;
//    _backImageView.layer.borderColor = [UIColor blackColor].CGColor;
    _backImageView.image  = [_backImageView.image imageWithBorderW:20 borderColor:[UIColor blackColor]];
    
}

///**
// *  生成带边框的image
// *
// *  @param borderW 边框的宽度
// *  @param color   边框的颜色
// *
// *  @return 带边框的image
// */
//- (UIImage *)imageWithBorderW:(CGFloat)borderW borderColor:(UIColor *)color;

@end
