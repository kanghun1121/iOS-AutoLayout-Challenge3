//
//  ViewController.swift
//  Challenge3
//  Created by yagom.
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {
    
    let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()

    let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 8
        view.distribution = .fill
        view.alignment = .center
        view.layoutMargins = .init(top: 8, left: 0, bottom: 8, right: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let titleLabel: UILabel = {
        let view = UILabel()
        view.adjustsFontForContentSizeCategory = true
        view.text = "Login"
        view.numberOfLines = 0
        view.font = .preferredFont(forTextStyle: .largeTitle)
        
        return view
    }()
    
    let imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "camera.macro")
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let descriptionLabel: UILabel = {
        let view = UILabel()
        view.adjustsFontForContentSizeCategory = true
        view.text = "If you want to learn Auto layout with yagom, please login first :)"
        view.textAlignment = .center
        view.font = .preferredFont(forTextStyle: .callout)
        view.numberOfLines = 0
        
        return view
    }()
    
    let emailTextField: UITextField = {
        let view = UITextField()
        view.borderStyle = .roundedRect
        view.placeholder = "E-mail"
        view.font = .preferredFont(forTextStyle: .body)
        view.adjustsFontForContentSizeCategory = true
        
        return view
    }()
    
    let passwordTextField: UITextField = {
        let view = UITextField()
        view.borderStyle = .roundedRect
        view.placeholder = "Password"
        view.font = .preferredFont(forTextStyle: .body)
        view.adjustsFontForContentSizeCategory = true
        
        return view
    }()
    
    let hStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 8
        view.distribution = .equalSpacing
        view.alignment = .center
        
        return view
    }()
    
    let switchView: UISwitch = {
        let view = UISwitch()
        view.isOn = true
        
        return view
    }()
    
    let switchLabel: UILabel = {
        let view = UILabel()
        view.adjustsFontForContentSizeCategory = true
        view.text = "Remember me"
        view.font = .preferredFont(forTextStyle: .title3)
        view.numberOfLines = 0
        
        return view
    }()
    
    let hStackView2: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 8
        view.distribution = .equalSpacing
        view.alignment = .center
        
        return view
    }()
    
    let loginBtn: UIButton = {
        let view = UIButton()
        view.setTitle("Login", for: .normal)
        view.setTitleColor(.blue, for: .normal)
        
        view.titleLabel?.adjustsFontForContentSizeCategory = true
        view.titleLabel?.font = .preferredFont(forTextStyle: .headline)
        
        return view
    }()
    
    let registerBtn: UIButton = {
        let view = UIButton()
        view.setTitle("Register", for: .normal)
        view.setTitleColor(.blue, for: .normal)
        
        view.titleLabel?.adjustsFontForContentSizeCategory = true
        view.titleLabel?.font = .preferredFont(forTextStyle: .headline)
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureLayout()
    }
    
    private func getEmptyView() -> UIView {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 30).isActive = true
        view.heightAnchor.constraint(greaterThanOrEqualToConstant: 30).isActive = true
        
        return view
    }
    
    private func configureHierarchy() {
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        
        [getEmptyView(), titleLabel, imageView, descriptionLabel,getEmptyView(), emailTextField, passwordTextField, getEmptyView(), hStackView, hStackView2, getEmptyView()].forEach { view in
            stackView.addArrangedSubview(view)
        }
        
        hStackView.addArrangedSubview(switchView)
        hStackView.addArrangedSubview(switchLabel)
        
        hStackView2.addArrangedSubview(loginBtn)
        hStackView2.addArrangedSubview(registerBtn)
    }

    private func configureLayout() {
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            
            stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1),
            
            descriptionLabel.widthAnchor.constraint(equalTo: imageView.widthAnchor),
            
            emailTextField.widthAnchor.constraint(equalTo: descriptionLabel.widthAnchor),
            passwordTextField.widthAnchor.constraint(equalTo: emailTextField.widthAnchor),
        ])
    }
}
