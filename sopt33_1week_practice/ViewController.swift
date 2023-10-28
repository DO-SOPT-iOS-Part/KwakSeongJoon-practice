//
//  ViewController.swift
//  sopt33_1week_practice
//
//  Created by 곽성준 on 2023/10/09.
//

import UIKit

final class MainViewController: UIViewController {
    
    private var idText: String = ""
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var idTExtField: UITextField!
    private var passwordText: String = ""
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 12
                
    }
    
    @IBAction func idTextFieldDidEditing(_ sender: Any) {
        guard let textField = sender as? UITextField else {return}
        if let idText = textField.text {
            self.idText = idText
        }
    }
    
    
    @IBAction func passwordTextFieldDidEditing(_ sender: Any) {
        guard let textField = sender as? UITextField else {return}
        if let passwordText = textField.text {
            self.passwordText = passwordText
        }
    }
    
    @IBAction func loginButtonTap(_ sender: Any) {
        pushToResultVC()
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        var sliderValue = CGFloat(sender.value)
        
        self.view.backgroundColor = UIColor(white: 1, alpha: sliderValue)

    }
    
    func pushToResultVC() {
        guard let resultVC = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController else {return}
        resultVC.email = idText
        resultVC.password = passwordText
        resultVC.delegate = self
        self.navigationController?.pushViewController(resultVC, animated: true)
    }
    
}

extension MainViewController: GetDataProtocol {
    func getLoginData(email: String, password: String) {
        print("받아온 email : \(email), 받아온 password : \(password)")
    }
    
    
}

