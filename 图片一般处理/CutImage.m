//
//  CutImage.m
//  图片一般处理
//
//  Created by mybook on 16/9/9.
//  Copyright © 2016年 石塔Mr.GC. All rights reserved.
//


#import "CutImage.h"

@interface CutImage ()
@property (nonatomic, strong)UIImageView *backImageView;
@end

@implementation CutImage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    [self cutImage];
}

/**
 *   对image进行裁剪,让长宽比例正常
 */
- (void)cutImage
{
    _backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, SCREEN_WIDTH, SCREEN_WIDTH * 0.5)];
    
    [self.view addSubview:_backImageView];
    
     UIImage *oldImage = [UIImage imageNamed:@"pic.jpg"];
    
    
    /**
     *   可以
     */
    _backImageView.image = [UIImage cutImage:oldImage scale:0.3];
    
}


///**
// *  对image进行裁剪,让长宽比例正常
// *
// *  @param image 待裁剪的image
// *  @param scale 宽高的比例
// *
// *  @return 裁剪后的图片
// */
//+ (UIImage *)cutImage:(UIImage*)image scale:(CGFloat)scale;

@end
