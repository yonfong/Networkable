#
# Be sure to run `pod lib lint Networkable.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Networkable'
  s.version          = '0.1.0'
  s.summary          = '基于moya的网络请求封装'

  s.homepage         = 'https://github.com/yonfong/Networkable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yonfong' => 'yongfongzhang@163.com' }
  s.source           = { :git => 'https://github.com/yonfong/Networkable.git', :tag => s.version.to_s }
  
  s.swift_version = '5.0'

  s.ios.deployment_target = '12.0'
  s.default_subspec       = 'Core'
  
  s.subspec 'Core' do |ss|
        ss.source_files = 'Networkable/Classes/Core'
        ss.dependency 'Moya'
  end
  
end
