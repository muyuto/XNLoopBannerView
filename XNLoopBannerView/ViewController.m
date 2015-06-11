//
//  ViewController.m
//  XNLoopBannerView
//
//  Created by XuNing on 15/6/11.
//  Copyright (c) 2015年 XuNing. All rights reserved.
//

#import "ViewController.h"
#import "XNLoopBannerView.h"

@interface ViewController () <XNLoopBannerViewDelegate>
@property(nonatomic, strong) XNLoopBannerView *bannerView;
@end

@implementation ViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *imageUrls = @[@"http://upload-images.jianshu.io/upload_images/45741-e2ec1fd4f6da7dfb.JPG?imageView2/1/w/750/h/375",
                           @"http://upload-images.jianshu.io/upload_images/45741-c23ae85a3c7320fe.JPG?imageView2/1/w/750/h/375",
                           @"http://upload-images.jianshu.io/upload_images/45741-6df8bea75e17a1d2.JPG?imageView2/1/w/750/h/375",
                           @"http://upload-images.jianshu.io/upload_images/45741-5e2de04c19968d16.JPG?imageView2/1/w/750/h/375"];
    
    self.bannerView = [[XNLoopBannerView alloc] initWithFrame:CGRectZero imageUrls:imageUrls];
    self.bannerView.bannerDelegate = self;
//    self.bannerView.animationDuration = 1.5;
//    self.bannerView.autoScroll = NO;
    self.bannerView.pageControl.currentPageIndicatorImage = [UIImage imageNamed:@"pageControl_dot"];
    [self.view addSubview:self.bannerView];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGFloat width = self.view.frame.size.width;
    self.bannerView.frame = CGRectMake(0, 50, width, width / 2);
//    self.bannerView.pageControlFrame = CGRectMake(0, 0, self.bannerView.frame.size.width, 30);
}

#pragma mark - XNLoopBannerViewDelegate
-(void)bannerView:(XNLoopBannerView *)bannerView didSelectAtIndex:(NSInteger)index {
    NSLog(@"click at index == %ld", (long)index);
}

@end
