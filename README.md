# XNLoopBannerView

XNLoopBannerView is an auto(if needed) loop scroll view with [SDWebImage](https://github.com/rs/SDWebImage) and [SMPageControl](https://github.com/Spaceman-Labs/SMPageControl). It uses UICollectionView to reuse UIImageViews.

![](https://raw.githubusercontent.com/xn1108100154/XNLoopBannerView/master/demo.gif)

# Example Usage

	self.bannerView = [[XNLoopBannerView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 300) imageUrls:imageUrlArray];
	self.bannerView.animationDuration = 5;
	[self.view addSubview:self.bannerView];

# Requirements

* ARC
* iOS 7.0 and above

# License

XNLoopBannerView is available under the MIT license. See the LICENSE file for more info.