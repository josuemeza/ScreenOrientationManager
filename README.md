# ScreenOrientationManager

[![CI Status](http://img.shields.io/travis/josuemeza/ScreenOrientationManager.svg?style=flat)](https://travis-ci.org/josuemeza/ScreenOrientationManager)
[![Version](https://img.shields.io/cocoapods/v/ScreenOrientationManager.svg?style=flat)](http://cocoapods.org/pods/ScreenOrientationManager)
[![License](https://img.shields.io/cocoapods/l/ScreenOrientationManager.svg?style=flat)](http://cocoapods.org/pods/ScreenOrientationManager)
[![Platform](https://img.shields.io/cocoapods/p/ScreenOrientationManager.svg?style=flat)](http://cocoapods.org/pods/ScreenOrientationManager)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ScreenOrientationManager is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ScreenOrientationManager'
```

## Setup

Add ScreenOrientationManager to listen any screen orientation change.
Add this extension on your project or directly add the method on AppDelegate class.

```swift
extension AppDelegate {

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return ScreenOrientationManager.singleton.orientation
    }

}
```

## Author

Josue Meza Peña, contacto@josuemeza.com

## License

ScreenOrientationManager is available under the MIT license. See the LICENSE file for more info.
