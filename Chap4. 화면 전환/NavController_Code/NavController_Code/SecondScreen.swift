//
//  SecondScreen.swift
//  NavController_Code
//
//  Created by 김태형 on 2023/09/15.
//

import UIKit

class SecondScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSecondBackgroundColor()
    }
}

extension SecondScreen {
    
    private func setupSecondBackgroundColor() {
        view.backgroundColor = .systemGreen
    }
    
}
