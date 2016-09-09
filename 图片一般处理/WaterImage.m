//
//  WaterImage.m
//  图片一般处理
//
//  Created by mybook on 16/9/9.
//  Copyright © 2016年 石塔Mr.GC. All rights reserved.
//


#import "WaterImage.h"

@interface WaterImage ()
@property (nonatomic, strong)UIImageView *backImageView;
@end

@implementation WaterImage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    
    [self waterImage];
    
}


/**
 *  给图片加水印
 */
- (void)waterImage
{
    _backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [self.view addSubview:_backImageView];
    UIImage *oldImage = [UIImage imageNamed:@"pic.jpg"];
    UIImage *newImage = [UIImage imageNamed:@"pic.jpg"];
    _backImageView.image = oldImage;
    
     _backImageView.image = [UIImage waterImageWith:oldImage logo:newImage];
}





///**
// *  给图片加水印
// *
// *  @param image     背景image(想要加水印的image)
// *  @param logoImage 水印image
// *  @param logoFrame 水印image想要加到的位置
// *
// *  @return 加了水印logoimage的image
// */
//+ (UIImage *)waterImageWith:(UIImage *)image logo:(UIImage *)logoImage;

@end
