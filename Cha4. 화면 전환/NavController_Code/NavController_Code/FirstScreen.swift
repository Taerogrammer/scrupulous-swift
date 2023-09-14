//
//  ViewController.swift
//  NavController_Code
//
//  Created by 김태형 on 2023/09/15.
//

import UIKit

class FirstScreen: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackgroundColor()
        setupFirstTitle()
        setupButton()
    }


}

extension FirstScreen {
    
    private func setupBackgroundColor() {
        view.backgroundColor = .systemMint
    }
    
    private func setupButton() {
        view.addSubview(nextButton) // 스토리보드라고 생각하면 버튼을 드래그한 것임
        
        nextButton.configuration = .filled()    // 버튼 유형
        nextButton.configuration?.baseBackgroundColor = .black
        nextButton.configuration?.title = "Next"
        
        nextButton.addTarget(self, action: #selector(goToSecondScreen), for: .touchUpInside)
        //MARK: - 중요
        nextButton.translatesAutoresizingMaskIntoConstraints = false    // 모든 UI 요소에 추가해야 함 -> 추가하지 않으면 오토 레이아웃을 자동으로 설정하여 컴포넌트가 제대로 배치되지 않을 수 있음
        
        NSLayoutConstraint.activate([   // constraint 설정
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setupFirstTitle() {
        title = "첫 번째 화면"
    }
    
    @objc func goToSecondScreen() {
        let secondScreen = SecondScreen()
        secondScreen.title = "두 번째 화면"
        navigationController?.pushViewController(secondScreen, animated: true)
    }
    
}
