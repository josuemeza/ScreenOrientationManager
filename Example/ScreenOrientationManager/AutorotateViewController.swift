//
//  AutorotateViewController.swift
//  ScreenOrientationManager
//
//  Created by Josue Meza Peña on 03/11/2018.
//  Copyright (c) 2018 Josue Meza Peña. All rights reserved.
//

import UIKit
import ScreenOrientationManager

class AutorotateViewController: UIViewController {
    
    // MARK: - Attributes
    
    private var autorotation: Bool = false
    
    // MARK: - Actions
    
    @IBAction func toggleAutorotation(_ sender: Any) {
        self.autorotation = !self.autorotation
        let button = sender as! UIButton
        if self.autorotation {
            ScreenOrientationManager.singleton.orientation(.all)
            button.setTitle("End autorotation", for: .normal)
        } else {
            ScreenOrientationManager.singleton.orientation(.portrait, andRotateTo: .portrait)
            button.setTitle("Start autorotation", for: .normal)
        }
    }
    
    // MARK: - View controller methods
    
    override func viewWillDisappear(_ animated: Bool) {
        ScreenOrientationManager.singleton.orientation(.portrait, andRotateTo: .portrait)
        super.viewWillDisappear(animated)
    }

}

