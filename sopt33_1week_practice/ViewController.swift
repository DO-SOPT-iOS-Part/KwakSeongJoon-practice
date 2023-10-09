//
//  ViewController.swift
//  sopt33_1week_practice
//
//  Created by 곽성준 on 2023/10/09.
//

import UIKit

class ViewController: UIViewController {
    
    private var idText: String = ""
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var idTExtField: UITextField!
    private var passwordText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    func pushToResultVC() {
        guard let resultVC = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController else {return}
        resultVC.email = idText
        resultVC.password = passwordText 
        resultVC.delegate = self
        self.navigationController?.pushViewController(resultVC, animated: true)
    }
    
}

extension ViewController: GetDataProtocol {
    func getLoginData(email: String, password: String) {
        print("받아온 email : \(email), 받아온 password : \(password)")
    }
    
    
}

