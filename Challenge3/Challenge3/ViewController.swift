//
//  ViewController.swift
//  Challenge3
//  Created by yagom.
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(adjustButtonDynamicType),
                                               name: UIContentSizeCategory.didChangeNotification,
                                               object: nil)
    }

    @objc func adjustButtonDynamicType() {
        buttons.forEach{button in
            button.titleLabel?.adjustsFontForContentSizeCategory = true
        }
    }
}


