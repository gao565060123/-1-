//
//  ResizableImage.m
//  图片一般处理
//
//  Created by mybook on 16/9/9.
//  Copyright © 2016年 石塔Mr.GC. All rights reserved.
//


#import "ResizableImage.h"

@interface ResizableImage ()
@property (nonatomic, strong)UIImageView *backImageView;
@end

@implementation ResizableImage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    [self resizableImageWithCapInsets];
}



/**
 *   image的拉伸
 */
- (void)resizableImageWithCapInsets
{
    _backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, SCREEN_WIDTH , SCREEN_WIDTH * 0.5)];
    
    [self.view addSubview:_backImageView];
    
    UIImage *oldImage = [UIImage imageNamed:@"pic.jpg"];
    
    
    _backImageView.image = [UIImage resizableImageWithCapInsets:UIEdgeInsetsMake(20, -50, 100, -10) image:oldImage];  //{top, left, bottom, right};
}



///**
// *  image的拉伸
// *
// *  @param capInsets 你想要的拉伸的范围
// *  @param image     想要被拉伸的image
// *
// *  @return 拉伸后的image
// */
//+ (UIImage *)resizableImageWithCapInsets:(UIEdgeInsets)capInsets image:(UIImage *)image;

@end
