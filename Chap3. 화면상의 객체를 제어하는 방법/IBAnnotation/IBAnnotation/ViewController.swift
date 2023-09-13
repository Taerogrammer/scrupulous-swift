//
//  ViewController.swift
//  IBAnnotation
//
//  Created by 김태형 on 2023/09/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var uiTitltle1: UILabel!
    
    @IBAction func clickBtn1(_ sender: Any) {
        self.uiTitltle1.text = "Button1 Clicked!"
    }
    
    @IBOutlet var uiTitle2: UILabel!
    
    @IBAction func clickBtn2(_ sender: Any) {
        self.uiTitle2.text = "Button2 Clicked!"
    }
    
    @IBOutlet var uiTitle3: UILabel!
    
    @IBAction func clickBtn3(_ sender: Any) {
        self.uiTitle3.text = "Button3 Clicked!"
    }
    
}

