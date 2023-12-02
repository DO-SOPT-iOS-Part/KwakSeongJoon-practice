

import UIKit
import SnapKit

class FirstTaskViewController: UIViewController {
    
    lazy var brrrButton : UIButton = {
        var button = UIButton()
        button.setTitle("정신없는 버튼", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(brrrBtnTap), for: .touchUpInside)
        return button
    }()
    
    lazy var toastButton : UIButton = {
        var button = UIButton()
        button.setTitle("멍멍", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(toastBtnTap), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setLayout()
    }
    
    private func setLayout() {
        view.backgroundColor = .white
        view.addSubview(toastButton)
        view.addSubview(brrrButton)
        
        brrrButton.snp.makeConstraints() {
            $0.centerY.equalToSuperview().offset(-55)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(50)
            $0.width.equalTo(200)
        }
        
        toastButton.snp.makeConstraints() {
            $0.centerY.equalToSuperview().offset(55)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(50)
            $0.width.equalTo(260)
        }
    }
    
    @objc
    private func brrrBtnTap() {
        brrrButton.shakeButton()
    }
    
    @objc
    private func toastBtnTap() {
        showToast()
    }
}

extension UIButton {
    func shakeButton() {
        self.transform = CGAffineTransform(translationX: 0, y: 20)
        UIView.animate(withDuration: 5.0,
                       delay: 0,
                       usingSpringWithDamping: 0.01,
                       initialSpringVelocity: 20,
                       options: [.curveLinear]) {
            self.transform = .identity
        }
    }
}

extension FirstTaskViewController {
    func showToast() {
        let toastView = FirstTaskToastView()
        toastView.layer.cornerRadius = 6
        
        view.addSubview(toastView)
        
        toastView.snp.makeConstraints() {
            $0.bottom.equalToSuperview().inset(50)
            $0.centerX.equalToSuperview()
            $0.height.width.equalTo(250)
        }
        
        UIView.animate(withDuration: 0.5, delay: 1.0, options: .curveEaseIn) {
            toastView.alpha = 0.0
        } completion: { _ in
            toastView.removeFromSuperview()
        }
    }
}
