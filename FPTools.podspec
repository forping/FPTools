#
# Be sure to run `pod lib lint FPTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FPTools'
  s.version          = '0.1.0'
  s.summary          = 'FPTools:a simple iOS development tools'

  s.description      = <<-DESC
  a simple iOS development tools
  HAVE:
      获得方法的执行时间
  TODO:
      其他的都没有
                       DESC

  s.homepage         = 'https://github.com/forping/FPTools'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aiyanbo' => 'ai_forping@163.com' }
  s.source           = { :git => 'https://github.com/forping/FPTools.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'FPTools/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FPTools' => ['FPTools/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
