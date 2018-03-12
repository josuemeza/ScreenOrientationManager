//
//  ScreenOrientationLockManager.swift
//
//  Created by Josue Meza Peña on 22-06-17.
//  Copyright © 2017 Josue Meza Peña. All rights reserved.
//

import UIKit

/**
 **ScreenRotationDelegate**
 
 Delegate for screen rotation methods of ScreenOrientationManager.
 */
public protocol ScreenRotationDelegate {
    
    /**
     **rotatedTo**
     
     Called when device is rotated.
     
     - Parameter orientation: New device orientation in UIInterfaceOrientationMask struct.
     */
    func rotatedTo(_ orientation: UIDeviceOrientation)
    
}

/**
 **ScreenOrientationManager**
 
 Manage the screen orientation using UIInterfaceOrientationMask struct.
 
 **Require application(_:supportedInterfaceOrientationsFor:) implemented like extension.**
 */
public class ScreenOrientationManager {
    
    // MARK: - Singleton definition
    
    /// **singleton**
    /// Singleton definition.
    public static let singleton = ScreenOrientationManager()
    
    // MARK: - Attributes
    
    /// **orientation**
    /// Orientation rule.
    public private(set) var orientation: UIInterfaceOrientationMask = .portrait
    
    /// **rotationDelegate**
    /// Rotation delegate.
    public var rotationDelegate: ScreenRotationDelegate?
    
    // MARK: - Constructor
    
    /// :nodoc:
    private init() {}
    
    // MARK: - Methods
    
    /**
     **orientation(_:andRotateTo:)**
     
     Set the orientation rule and change actual orientation
     
     - Parameter orientation: Orientation rule to set.
     - Parameter andRotateTo: Orientation to inmediatly set.
     */
    public func orientation(_ orientation: UIInterfaceOrientationMask, andRotateTo rotateOrientation: UIInterfaceOrientation? = nil) {
        self.orientation = orientation
        if let rotateOrientation = rotateOrientation {
            UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
        }
    }
    
    /**
     **rotationObserver**
     
     Called on device is rotated.
     
     - Parameter notification: NotificationCenter values.
     */
    @objc func rotationObserver(_ notification: Notification) {
        self.rotationDelegate?.rotatedTo(UIDevice.current.orientation)
    }
    
    /**
     **initRotationObserver**
     
     Init notification observer for device rotation.
     */
    public func initRotationObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(rotationObserver(_:)), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
    }
    
    /**
     **endRotationObserver**
     
     End notification observer for device rotation.
     */
    public func endRotationObserver() {
        NotificationCenter.default.removeObserver(self)
    }
    
}

//extension AppDelegate {
//
//    /// :nodoc:
//    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
//        return ScreenOrientationManager.singleton.orientation
//    }
//
//}

