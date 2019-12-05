#
# Be sure to run `pod lib lint XKCornerRadius.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XKUIKit'
  s.version          = '1.3.1'
  s.summary          = 'A short description of XKUIKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/sy5075391'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sy5075391' => '447523382@qq.com' }
  s.source           = { :git => 'http://git.xksquare.com/XK-iOS-Component/XKUIKit.git'}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.subspec 'XKHudView' do |ss|
    ss.source_files = 'Component/Classes/XKHudView/*.{h,m}'
    ss.resources = 'Component/Assets/XKHudResources.bundle'
  end
  s.subspec 'XKAlertUtil' do |ss|
    ss.source_files = 'Component/Classes/XKAlertUtil/**/*'
    ss.dependency 'YYCategories'
  end
  s.subspec 'XKEmptyPlaceView' do |ss|
    ss.source_files = 'Component/Classes/XKEmptyPlaceView/**/*'
    ss.dependency 'Reachability'
    ss.dependency 'BlocksKit'
  end
  # s.resource_bundles = {
  #   'XKCornerRadius' => ['XKCornerRadius/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'XKCategary'
  s.dependency 'XKCommonDefine'
  s.dependency 'Masonry'
end
