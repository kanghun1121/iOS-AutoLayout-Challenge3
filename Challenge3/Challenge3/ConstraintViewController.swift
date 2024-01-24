//
//  ConstraintViewController.swift
//  Challenge3
//
//  Created by 맨태 on 1/23/24.
//

import UIKit

final class ConstraintViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGreen
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let leading = NSLayoutConstraint(item: button,
                                         attribute: .leading,
                                         relatedBy: .equal,
                                         toItem: view.safeAreaLayoutGuide,
                                         attribute: .leading,
                                         multiplier: 1,
                                         constant: 20)
        
        let trailing = NSLayoutConstraint(item: button,
                                          attribute: .trailing,
                                          relatedBy: .equal,
                                          toItem: view.safeAreaLayoutGuide,
                                          attribute: .trailing,
                                          multiplier: 1,
                                          constant: -20)
        
        let bottom = NSLayoutConstraint(item: button,
                                                attribute: .bottom,
                                                relatedBy: .lessThanOrEqual,
                                                toItem: view,
                                                attribute: .bottom,
                                                multiplier: 1,
                                                constant: -20)
        
        let bottomSafeArea = NSLayoutConstraint(item: button,
                                                attribute: .bottom,
                                                relatedBy: .equal,
                                                toItem: view.safeAreaLayoutGuide,
                                                attribute: .bottom,
                                                multiplier: 1,
                                                constant: 0)
        bottomSafeArea.priority = .defaultHigh
        
        NSLayoutConstraint.activate([leading, trailing, bottom, bottomSafeArea])
    }
}
