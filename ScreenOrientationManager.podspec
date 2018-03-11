#
# Be sure to run `pod lib lint ScreenOrientationManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ScreenOrientationManager'
  s.version          = '0.1.0'
  s.summary          = 'Manager for iOS device screen orientation.'
  s.swift_version    = '3.2'

  s.description      = <<-DESC
Manager to set up behavior of screen orientation in running app, allowing to set a specific orientation or autorotation.
                       DESC

  s.homepage         = 'https://github.com/josuemeza/ScreenOrientationManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Josue Meza Peña' => 'contacto@josuemeza.com' }
  s.source           = { :git => 'https://github.com/josuemeza/ScreenOrientationManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'ScreenOrientationManager/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ScreenOrientationManager' => ['ScreenOrientationManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
