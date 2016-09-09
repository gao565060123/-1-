//
//  MixImage.m
//  图片一般处理
//
//  Created by mybook on 16/9/9.
//  Copyright © 2016年 石塔Mr.GC. All rights reserved.
//


#import "MixImage.h"

@interface MixImage ()
@property (nonatomic, strong)UIImageView *backImageView;
@end

@implementation MixImage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [self mixImageWithImageArray];
}
/**
 *  多张image合成一张image
 */
- (void)mixImageWithImageArray
{
    _backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [self.view addSubview:_backImageView];
    UIImage *oldImage = [UIImage imageNamed:@"pic.jpg"];
    UIImage *newImage = [UIImage imageNamed:@"pic.jpg"];
    
    
    CGFloat width = SCREEN_WIDTH * 0.5;
    CGFloat height = SCREEN_HEIGHT * 0.5;
    
    NSValue *value1 = [NSValue valueWithCGRect:CGRectMake(0, 0,width, height)];
    NSValue *value2 = [NSValue valueWithCGRect:CGRectMake(width, 0, width, height)];
    NSValue *value3 = [NSValue valueWithCGRect:CGRectMake(0, height,width, height)];
    NSValue *value4 = [NSValue valueWithCGRect:CGRectMake(width, height, width, height)];

    _backImageView.image = [UIImage mixImageWithImageArray:@[oldImage, newImage,newImage,oldImage] andImageOffsetArray:@[value1, value2,value3,value4] andBackImageViewSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT)];
    
}




///**
// *  多张image合成一张image
// *
// *  @param imageArray  存放图片的数组
// *  @param offsetArray 存放图片所处位置的frame(转成nsvalue存到数组中)
// *  @param size        背景imageView的size
// *
// *  @return 返回size大小的合成image
// */
//+ (UIImage *)mixImageWithImageArray:(NSArray *)imageArray andImageOffsetArray:(NSArray *)offsetArray andBackImageViewSize:(CGSize)size;
@end
