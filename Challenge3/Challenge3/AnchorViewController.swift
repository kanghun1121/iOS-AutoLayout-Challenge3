//
//  ViewController.swift
//  Challenge3
//  Created by yagom.
//  Copyright © yagom. All rights reserved.
// 

import UIKit

final class AnchorViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGreen
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        button.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -20).isActive = true
        
        let safeBottomAnchor = button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        safeBottomAnchor.isActive = true
        safeBottomAnchor.priority = .defaultHigh
    }


}

