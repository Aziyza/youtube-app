//
//  ViewController.swift
//  youtube-app
//
//  Created by Mac on 6/10/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.getVideos()
    }


}

