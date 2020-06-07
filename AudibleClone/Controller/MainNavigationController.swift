//
//  MainNavigationController.swift
//  AudibleClone
//
//  Created by Saul Rivera on 07/06/20.
//  Copyright © 2020 Saul Rivera. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if isLoggedIn {
            let homeController = HomeController()
            viewControllers = [homeController]
        } else {
            let loginController = LoginController()
            loginController.modalPresentationStyle = .fullScreen
            present(loginController, animated: true)
        }
    }
    
    private var isLoggedIn: Bool {
        return UserDefaults.standard.isLoggedIn()
    }
}
