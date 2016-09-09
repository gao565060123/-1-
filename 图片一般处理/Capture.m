//
//  Capture.m
//  图片一般处理
//
//  Created by mybook on 16/9/9.
//  Copyright © 2016年 石塔Mr.GC. All rights reserved.
//


#import "Capture.h"

@interface Capture ()
@property (nonatomic, strong)UIImageView *backImageView;
@end

@implementation Capture

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self captureWithView];
}


/**
 *  屏幕截图
 */
- (void)captureWithView
{
    _backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [self.view addSubview:_backImageView];
    UIImage *oldImage = [UIImage imageNamed:@"pic.jpg"];
    _backImageView.image = oldImage;
    
    
    UIImageView *newImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH * 0.5, SCREEN_HEIGHT * 0.5)];
    newImageView.image = [UIImage captureWithView:_backImageView];
    [self.view addSubview:newImageView];
}


///**
// *  屏幕截图
// *
// *  @param view 想要截图的view
// *
// *  @return 截图image
// */
//+ (UIImage *)captureWithView:(UIView *)view;
@end
