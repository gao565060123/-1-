//
//  FixOrientation.m
//  图片一般处理
//
//  Created by mybook on 16/9/9.
//  Copyright © 2016年 石塔Mr.GC. All rights reserved.
//


#import "FixOrientation.h"

@interface FixOrientation ()
@property (nonatomic, strong)UIImageView *backImageView;
@end

@implementation FixOrientation

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self fixOrientationWithImage];
}



/**
 *  判断图片的方向,返回正常方向的iamge     ------------  对图片进行了比例的裁剪 , 显示中心区域
 */
- (void)fixOrientationWithImage
{
    _backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, SCREEN_WIDTH, SCREEN_WIDTH )];
    [self.view addSubview:_backImageView];
    UIImage *oldImage = [UIImage imageNamed:@"pic.jpg"];
    
     _backImageView.image =[UIImage fixOrientationWithImage:oldImage];
}






///**
// *  判断图片的方向,返回正常方向的iamge
// *
// *  @param image 你要转换方向的image
// *
// *  @return 正常方向的image
// */
//+(UIImage *)fixOrientationWithImage:(UIImage *)image;

@end
