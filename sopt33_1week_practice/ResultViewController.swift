//
//  ResultViewController.swift
//  sopt33_1week_practice
//
//  Created by 곽성준 on 2023/10/09.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    var delegate: GetDataProtocol?
    
    var email: String = ""
    var password: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindText()
        
    }
    
    @IBAction func ResultViewController(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        delegate?.getLoginData(email: self.email, password: self.password)
    }

    func bindText() {
        self.emailLabel.text = "email : \(email)"
        self.passwordLabel.text = "password : \(password)"
    }
    
}
