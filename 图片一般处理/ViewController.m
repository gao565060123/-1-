//
//  ViewController.m
//  图片一般处理
//
//  Created by mybook on 16/9/9.
//  Copyright © 2016年 石塔Mr.GC. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.dataArr = [NSMutableArray array];
    self.navigationItem.title = @"测试";
    [self initData];
    [self createTableView];
}

- (void)initData
{
    NSString *s1 = @"CropScaleImage";
    NSString *s2 = @"Capture";
    NSString *s3 = @"BorderW";
    NSString *s4 = @"WaterImage";
    NSString *s5 = @"CutImage";
    NSString *s6 = @"ResizableImage";
    NSString *s7 = @"MixImage";
    NSString *s8 = @"FixOrientation";
    NSString *s9 = @"BgColor";
    [self.dataArr addObject:s1];
    [self.dataArr addObject:s2];
    [self.dataArr addObject:s3];
    [self.dataArr addObject:s4];
    [self.dataArr addObject:s5];
    [self.dataArr addObject:s6];
    [self.dataArr addObject:s7];
    [self.dataArr addObject:s8];
    [self.dataArr addObject:s9];
}

- (void)createTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = self.dataArr[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Class targetClass = NSClassFromString(self.dataArr[indexPath.row]);
    id target = [[targetClass alloc] init];
    [self.navigationController pushViewController:target animated:YES];
}

























































///**
// *  根据颜色,返回这个颜色的iamge
// *
// *  @param color 你想要的颜色
// *
// *  @return 带颜色的image
// */
//+(UIImage *)imageWithBgColor:(UIColor *)color;
//
//
///**
// *  判断图片的方向,返回正常方向的iamge
// *
// *  @param image 你要转换方向的image
// *
// *  @return 正常方向的image
// */
//+(UIImage *)fixOrientationWithImage:(UIImage *)image;
//
//
//
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
//
//
///**
// *  image的拉伸
// *
// *  @param capInsets 你想要的拉伸的范围
// *  @param image     想要被拉伸的image
// *
// *  @return 拉伸后的image
// */
//+ (UIImage *)resizableImageWithCapInsets:(UIEdgeInsets)capInsets image:(UIImage *)image;
//
///**
// *  对image进行裁剪,让长宽比例正常
// *
// *  @param image 待裁剪的image
// *  @param scale 宽高的比例
// *
// *  @return 裁剪后的图片
// */
//+ (UIImage *)cutImage:(UIImage*)image scale:(CGFloat)scale;
//
//
///**
// *  生成带边框的image
// *
// *  @param borderW 边框的宽度
// *  @param color   边框的颜色
// *
// *  @return 带边框的image
// */
//- (UIImage *)imageWithBorderW:(CGFloat)borderW borderColor:(UIColor *)color;
//
///**
// *  屏幕截图
// *
// *  @param view 想要截图的view
// *
// *  @return 截图image
// */
//+ (UIImage *)captureWithView:(UIView *)view;
//
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
//
//
///**
// *  生成指定大小的image
// *
// *  @param size    指定大小
// *  @param isScale 是否等比例缩放(默认YES)
// *
// *  @return 返回指定大小的image
// */
//- (UIImage *)cropEqualScaleImageToSize:(CGSize)size isScale:(BOOL)isScale;


@end