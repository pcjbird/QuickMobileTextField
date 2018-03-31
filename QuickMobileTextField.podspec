Pod::Spec.new do |s|
    s.name             = "QuickMobileTextField"
    s.version          = "1.0.3"
    s.summary          = "A Chinese mainland area mobile phone number input textfield. 中国大陆地区手机号码输入文本框。"
    s.description      = <<-DESC
    A Chinese mainland area mobile phone number input textfield. 快速集成一个中国大陆地区手机号码输入文本框。
    DESC
    s.homepage         = "https://github.com/pcjbird/QuickMobileTextField"
    s.license          = 'MIT'
    s.author           = {"pcjbird" => "pcjbird@hotmail.com"}
    s.source           = {:git => "https://github.com/pcjbird/QuickMobileTextField.git", :tag => s.version.to_s}
    s.social_media_url = 'http://www.lessney.com'
    s.requires_arc     = true
    s.documentation_url = 'https://github.com/pcjbird/QuickMobileTextField/blob/master/README.md'
    s.screenshot       = 'https://github.com/pcjbird/QuickMobileTextField/blob/master/logo.png'

    s.platform         = :ios, '8.0'
    s.frameworks       = 'Foundation', 'UIKit', 'CoreGraphics'
#s.preserve_paths   = ''
    s.source_files     = 'QuickMobileTextField/*.{h,m}'
    s.public_header_files = 'QuickMobileTextField/QuickMobileTextField.h'

    s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

end
