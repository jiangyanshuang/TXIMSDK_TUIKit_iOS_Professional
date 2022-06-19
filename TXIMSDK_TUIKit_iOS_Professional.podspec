#
# Be sure to run `pod lib lint TXIMSDK_TUIKit_iOS_Professional.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TXIMSDK_TUIKit_iOS_Professional'
  s.version          = '0.0.1'
  s.summary          = 'TXIMSDK_TUIKit_iOS_Professional.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
在完成并不熟悉的事情时，我们时常害怕做不好而被人嘲笑。其实，我们不必太过关注他人的目光，与其畏手畏脚，不如大胆向前。给自己指定一些能够达到的小目标，每实现一个，你就会离自信更进一步。加油！！！
                       DESC

  s.homepage         = 'https://www.baidu.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '1048811572@qq.com' => '1048811572@qq.com' }
  s.source           = { :git => 'https://github.com/jiangyanshuang/TXIMSDK_TUIKit_iOS_Professional.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  s.xcconfig     = { 'VALID_ARCHS' => 'armv7 arm64 x86_64', }
  s.libraries    = 'stdc++'

  s.dependency 'MMLayout','0.2.0'
  s.dependency 'SDWebImage','5.5.2'
  s.dependency 'ReactiveObjC','3.1.1'
  s.dependency 'Toast','4.0.0'
  s.dependency 'TXLiteAVSDK_Professional','7.4.9203'
  s.dependency 'TXIMSDK_iOS','4.9.1'
  
  s.requires_arc = true

  s.source = { :http => 'https://imsdk-1252463788.cos.ap-guangzhou.myqcloud.com/5.1.56/TIM_SDK_TUIKIT_iOS_latest_framework.zip'}
  s.source_files = '**/TUIKit/Classes/**/*.{h,m,mm}'
  # s.vendored_frameworks = ''
  s.vendored_libraries = ['**/TUIKit/Classes/third/voiceConvert/opencore-amrnb/libopencore-amrnb.a', '**/TUIKit/Classes/third/voiceConvert/opencore-amrwb/libopencore-amrwb.a']
  s.resource = ['**/TUIKit/Resources/TUIKitFace.bundle','**/TUIKit/Resources/TUIKitResource.bundle']
  s.resource_bundles = {
    'TUIKitLocalizable' => ['**/TUIKit/Resources/Localizable/*']
  }
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  # s.resource_bundles = {
  #   'TXIMSDK_TUIKit_iOS_Professional' => ['TXIMSDK_TUIKit_iOS_Professional/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
