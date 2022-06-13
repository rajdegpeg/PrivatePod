#
# Be sure to run `pod lib lint PrivatePod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PrivatePod'
  s.version          = '0.1.2'
  s.summary          = 'A short description of PrivatePod.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/rajdegpeg/PrivatePod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rajdegpeg' => 'rajendra.kadam@degpeg.com' }
  s.source           = { :git => 'https://github.com/rajdegpeg/PrivatePod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
#  s.Swift.version = '5.0'
  s.swift_version = '5.0'

  s.source_files = 'PrivatePod/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PrivatePod' => ['PrivatePod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
#  s.dependency 'Alamofire'
  s.dependency 'Socket.IO-Client-Swift', '~> 16.0'
  s.dependency 'MBProgressHUD', '~> 1.2'
  s.dependency 'Kingfisher', '~> 7.0'
  s.dependency 'ObjectMapper', '~> 4.2'
  s.dependency 'GrowingTextView', '0.7.2'
  s.dependency 'IQKeyboardManagerSwift'
end
