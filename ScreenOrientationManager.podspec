#
# Be sure to run `pod lib lint ScreenOrientationManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name                    = 'ScreenOrientationManager'
  s.version                 = '1.0.2'
  s.summary                 = 'Manager for iOS device screen orientation.'
  s.swift_version           = '5.0'
  s.description             = 'Manager to set up behavior of screen orientation on running app, allowing to set a specific orientation or autorotation.'
  s.homepage                = 'https://github.com/josuemeza/ScreenOrientationManager'
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = { 'Josue Meza Peña' => 'contacto@josuemeza.com' }
  s.source                  = { :git => 'https://github.com/josuemeza/ScreenOrientationManager.git', :tag => s.version.to_s }
  s.ios.deployment_target   = '10.0'
  s.documentation_url       = 'http://josuemeza.com/pods/ScreenOrientationManager/'
  s.source_files            = 'ScreenOrientationManager/Classes/**/*'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  # s.resource_bundles = {
  #   'ScreenOrientationManager' => ['ScreenOrientationManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
