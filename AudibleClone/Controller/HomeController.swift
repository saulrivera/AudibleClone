//
//  HomeController.swift
//  AudibleClone
//
//  Created by Saul Rivera on 07/06/20.
//  Copyright © 2020 Saul Rivera. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(image: UIImage(named: "home"))
        view.addSubview(imageView)
        
        title = "We're logged in"
        
        _ = imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 88, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: #selector(handleSignOut))
    }
    
    @objc private func handleSignOut() {
        UserDefaults.standard.setIsLoggedIn(value: false)
        
        let logginController = LoginController()
        logginController.modalPresentationStyle = .fullScreen
        present(logginController, animated: true)
    }
}
