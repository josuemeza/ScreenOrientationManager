//
//  RotationObserverViewController.swift
//  ScreenOrientationManager_Example
//
//  Created by Josue Meza Peña on 11-03-18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import ScreenOrientationManager

class RotationObserverViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var rotationLabel: UILabel!
    
    // MARK: - View controller methods
    
    override func viewWillAppear(_ animated: Bool) {
        ScreenOrientationManager.singleton.orientation(.all)
        ScreenOrientationManager.singleton.rotationDelegate = self
        ScreenOrientationManager.singleton.initRotationObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        ScreenOrientationManager.singleton.endRotationObserver()
        ScreenOrientationManager.singleton.rotationDelegate = nil
        ScreenOrientationManager.singleton.orientation(.portrait, andRotateTo: .portrait)
    }

}

extension RotationObserverViewController: ScreenRotationDelegate {
    
    // MARK: - Screen rotation delegate methods
    
    func rotatedTo(_ orientation: UIDeviceOrientation) {
        var stringOrientation = "Currently: "
        switch orientation {
        case .portrait: stringOrientation += "portrait"
        case .landscapeLeft: stringOrientation += "landscape left"
        case .landscapeRight: stringOrientation += "landscape right"
        case .portraitUpsideDown: stringOrientation += "portrait upside down"
        case .faceUp: stringOrientation += "face up"
        case .faceDown: stringOrientation += "face down"
        default: stringOrientation += "undefined"
        }
        self.rotationLabel.text = stringOrientation
    }
    
}
