//
//  StackViewController.swift
//  Challenge3
//
//  Created by 맨태 on 1/23/24.
//

import UIKit

final class StackViewController: UIViewController {
    
    private var vStackView: UIStackView = {
        let st = UIStackView()
        st.axis = .vertical
        st.spacing = 10
        st.distribution = .fillEqually
        return st
    }()
    
    private lazy var hStackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [addButton, removeButton])
        st.axis = .horizontal
        st.distribution = .fillEqually
        return st
    }()
    
    private lazy var addButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Add", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(addView), for: .touchUpInside)
        return button
    }()
    
    private lazy var removeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Remove", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(removeView), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(hStackView)
        hStackView.translatesAutoresizingMaskIntoConstraints = false
        hStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        hStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        hStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        view.addSubview(vStackView)
        vStackView.translatesAutoresizingMaskIntoConstraints = false
        vStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        vStackView.bottomAnchor.constraint(equalTo: hStackView.topAnchor).isActive = true
        vStackView.leadingAnchor.constraint(equalTo: hStackView.leadingAnchor).isActive = true
        vStackView.trailingAnchor.constraint(equalTo: hStackView.trailingAnchor).isActive = true
    }
    
    @objc func addView() {
        let innerView = UIView()
        innerView.backgroundColor = .black
        innerView.isHidden = true
        vStackView.addArrangedSubview(innerView)
        
        UIView.animate(withDuration: 0.3) {
            innerView.isHidden = false
        }
    }
    
    @objc func removeView() {
        guard let last = vStackView.arrangedSubviews.last else { return }
        
        UIView.animate(withDuration: 0.3) {
            last.isHidden = true
        } completion: { _ in
            self.vStackView.removeArrangedSubview(last)
        }
    }
}
