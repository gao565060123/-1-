//
//  UIImage+Helper.h
//  图片一般处理
//
//  Created by mybook on 16/9/9.
//  Copyright © 2016年 石塔Mr.GC. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface UIImage (Helper)

/**
 *  根据颜色,返回这个颜色的iamge
 *
 *  @param color 你想要的颜色
 *
 *  @return 带颜色的image
 */
+(UIImage *)imageWithBgColor:(UIColor *)color;





/**
 *  对image进行裁剪,让长宽比例正常
 *
 *  @param image 待裁剪的image
 *  @param scale 宽高的比例
 *
 *  @return 裁剪后的图片
 */
+(UIImage *)fixOrientationWithImage:(UIImage *)image;



/**
 *  多张image合成一张image
 *
 *  @param imageArray  存放图片的数组
 *  @param offsetArray 存放图片所处位置的frame(转成nsvalue存到数组中)   使用方法
 
 // CGRect frame = CGRectMake(x, y, w, h);
 //CGrect是结构体，不能保存到数组，可以将CGrect转换成NSValue
 // NSValue *frameValue = [NSValue valueWithCGRect:frame];
 
 
 *  @param size        背景imageView的size
 *
 *  @return 返回size大小的合成image
 */
+ (UIImage *)mixImageWithImageArray:(NSArray *)imageArray andImageOffsetArray:(NSArray *)offsetArray andBackImageViewSize:(CGSize)size;


/**
 *  image的拉伸
 *
 *  @param capInsets 你想要的拉伸的范围
 *  @param image     想要被拉伸的image
 *
 *  @return 拉伸后的image
 */
+ (UIImage *)resizableImageWithCapInsets:(UIEdgeInsets)capInsets image:(UIImage *)image;

/**
 *  判断图片的方向,返回正常方向的iamge
 *
 *  @param image 你要转换方向的image
 *
 *  @return 正常方向的image
 */
+ (UIImage *)cutImage:(UIImage*)image scale:(CGFloat)scale;


/**
 *  生成带边框的image
 *
 *  @param borderW 边框的宽度
 *  @param color   边框的颜色
 *
 *  @return 带边框的image
 */
- (UIImage *)imageWithBorderW:(CGFloat)borderW borderColor:(UIColor *)color;

/**
 *  屏幕截图
 *
 *  @param view 想要截图的view
 *
 *  @return 截图image
 */
+ (UIImage *)captureWithView:(UIView *)view;

/**
 *  给图片加水印
 *
 *  @param image     背景image(想要加水印的image)
 *  @param logoImage 水印image
 *  @param logoFrame 水印image想要加到的位置
 *
 *  @return 加了水印logoimage的image
 */
+ (UIImage *)waterImageWith:(UIImage *)image logo:(UIImage *)logoImage;


/**
 *  生成指定大小的image
 *
 *  @param size    指定大小
 *  @param isScale 是否等比例缩放(默认YES)
 *
 *  @return 返回指定大小的image
 */
- (UIImage *)cropEqualScaleImageToSize:(CGSize)size isScale:(BOOL)isScale;

@end
