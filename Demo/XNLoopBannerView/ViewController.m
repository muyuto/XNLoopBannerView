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
@property(nonatomic, strong) UIButton *reloadButton;
@property(nonatomic, copy) NSArray *imageUrls;
@end

@implementation ViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageUrls = @[@"http://upload-images.jianshu.io/upload_images/712713-a205f7cdf71bc548.jpg?imageView2/1/w/750/h/375",
                       @"http://upload-images.jianshu.io/upload_images/712713-bd1173b41d2b5f0a.jpg?imageView2/1/w/750/h/375",
                       @"http://upload-images.jianshu.io/upload_images/712713-7e5a17b916b1960b.jpg?imageView2/1/w/750/h/375",
                       @"http://upload-images.jianshu.io/upload_images/712713-282fe03b0ea97e00.jpg?imageView2/1/w/750/h/375"];
    
    [self.view addSubview:self.bannerView];
    [self.view addSubview:self.reloadButton];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGFloat width = self.view.frame.size.width;
    self.bannerView.frame = CGRectMake(0, 20, width, width / 2);
//    self.bannerView.pageControlFrame = CGRectMake(0, 0, self.bannerView.frame.size.width, 30);
    self.reloadButton.center = CGPointMake(self.view.center.x, CGRectGetMaxY(self.bannerView.frame) + 40);
}

#pragma mark - XNLoopBannerViewDelegate
-(void)bannerView:(XNLoopBannerView *)bannerView didSelectAtIndex:(NSInteger)index {
    NSLog(@"click at index == %ld", (long)index);
}

#pragma mark - Event Response
- (void)reloadBanner {
    NSMutableArray *newUrls = [NSMutableArray arrayWithArray:self.imageUrls];
    [newUrls addObjectsFromArray:newUrls];
    [self.bannerView reloadWithImageUrls:newUrls];
}

#pragma mark - Getters
- (XNLoopBannerView *)bannerView {
    if (!_bannerView) {
        _bannerView = [[XNLoopBannerView alloc] initWithFrame:CGRectZero imageUrls:self.imageUrls];
        _bannerView.bannerDelegate = self;
//        _bannerView.animationDuration = 1.5;
//        _bannerView.autoScroll = NO;
//        _bannerView.pageControl.currentPageIndicatorImage = [UIImage imageNamed:@"pageControl_dot"];
        _bannerView.placeholderImage = [UIImage imageNamed:@"placeholder"];
    }
    return _bannerView;
}

- (UIButton *)reloadButton {
    if (!_reloadButton) {
        _reloadButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_reloadButton setTitle:@"Reload" forState:UIControlStateNormal];
        [_reloadButton addTarget:self action:@selector(reloadBanner) forControlEvents:UIControlEventTouchUpInside];
        [_reloadButton sizeToFit];
    }
    return _reloadButton;
}

@end
