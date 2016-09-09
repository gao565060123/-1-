//
//  CropScaleImage.m
//  图片一般处理
//
//  Created by mybook on 16/9/9.
//  Copyright © 2016年 石塔Mr.GC. All rights reserved.
//


#import "CropScaleImage.h"

@interface CropScaleImage ()
@property (nonatomic, strong)UIImageView *backImageView;
@property (nonatomic, strong)UIImageView *backImageView1;
@end

@implementation CropScaleImage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self cropEqualScaleImageToSize];

}













/**
 *  生成指定大小的image
 */
- (void)cropEqualScaleImageToSize
{
    UIImage *oldImage = [UIImage imageNamed:@"pic.jpg"];
    _backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT * 0.5)];
    [self.view addSubview:_backImageView];
    _backImageView.image = [oldImage cropEqualScaleImageToSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT * 0.5) isScale:YES];   // 按原图的比例
    
    
//    UIImage *oldImage1 = [UIImage imageNamed:@"2"];
    _backImageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT * 0.5, SCREEN_WIDTH, SCREEN_HEIGHT * 0.5)];
    [self.view addSubview:_backImageView1];
    _backImageView1.image = [oldImage cropEqualScaleImageToSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT * 0.5) isScale:NO];   // 不按比例
    
}



///**
// *  生成指定大小的image
// *
// *  @param size    指定大小
// *  @param isScale 是否等比例缩放(默认YES)
// *
// *  @return 返回指定大小的image
// */
//- (UIImage *)cropEqualScaleImageToSize:(CGSize)size isScale:(BOOL)isScale;



/*
 //- (void)downloadImages {
 //    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
 //
 //    // 异步下载图片
 //    dispatch_async(queue, ^{
 //        // 创建一个组
 //        dispatch_group_t group = dispatch_group_create();
 //
 //
 //
 //        // 关联一个任务到group
 //        dispatch_group_async(group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
 //            // 下载第一张图片
 //
 //            for (int i = 0; i < 1000; i++) {
 //                NSLog(@"-------------------");
 //            }
 //        });
 //
 //        // 关联一个任务到group
 //        dispatch_group_async(group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
 //
 //            for (int i = 0; i < 10000; i++) {
 //                NSLog(@"-++++++++++++--");
 //            }
 //        });
 //
 //        // 等待组中的任务执行完毕,回到主线程执行block回调
 //        dispatch_group_notify(group, dispatch_get_main_queue(), ^{
 //
 //            NSLog(@"<<<<<<<<<<<<<<<<<<<<<<<<<<<   end  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
 //
 //
 ////            self.imageView1.image = image1;
 ////            self.imageView2.image = image2;
 //
 //            // 千万不要在异步线程中自动释放UIImage，因为当异步线程结束，异步线程的自动释放池也会被销毁，那么UIImage也会被销毁
 //
 //            // 在这里释放图片资源
 ////            [image1 release];
 ////            [image2 release];
 //        });
 //
 //        // 释放group
 ////        dispatch_release(dispatch_object_t group);
 //    });
 //
 //
 //
 //}
 

 */


@end
