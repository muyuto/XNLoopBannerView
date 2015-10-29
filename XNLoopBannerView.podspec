Pod::Spec.new do |s|
  s.name         = "XNLoopBannerView"
  s.version      = "0.2"
  s.summary      = "An auto loop scroll view."
  s.homepage     = "https://github.com/xn1108100154/XNLoopBannerView"
  s.screenshots  = "https://raw.githubusercontent.com/xn1108100154/XNLoopBannerView/master/demo.gif"
  s.license      = "MIT"
  s.author       = { "XuNing" => "ningxu.ios@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/xn1108100154/XNLoopBannerView.git", :tag => s.version.to_s }
  s.source_files = "XNLoopBannerView/*.{h,m}"
  s.requires_arc = true

  s.dependency "SDWebImage", "~> 3.7"
  s.dependency "SMPageControl", "~> 1.2"
end
