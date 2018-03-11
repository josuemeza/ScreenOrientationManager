//
//  ViewController.swift
//  ScreenOrientationManager
//
//  Created by Josue Meza Peña on 03/11/2018.
//  Copyright (c) 2018 Josue Meza Peña. All rights reserved.
//

import UIKit
import ScreenOrientationManager

class ViewController: UIViewController {
    
    // MARK: - Attributes
    
    private var autorotation: Bool = false
    
    // MARK: - Actions
    
    @IBAction func toggleAutorotation(_ sender: Any) {
        self.autorotation = !self.autorotation
        let button = sender as! UIButton
        if self.autorotation {
            ScreenOrientationManager.singleton.orientation(.all, .portrait)
            debugPrint(ScreenOrientationManager.singleton.orientation == .landscape)
            button.setTitle("Start autorotation", for: .normal)
        } else {
            debugPrint(ScreenOrientationManager.singleton.orientation == .landscape)
            button.setTitle("End autorotation", for: .normal)
        }
    }
    
    // MARK: - View controller methods

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

