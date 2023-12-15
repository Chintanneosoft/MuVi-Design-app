//
//  OTPVerificationVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 08/12/23.
//

import UIKit
//MARK: - OTPVerificationVC
class OTPVerificationVC: BaseVC {

    @IBOutlet weak var btnVerifyOTP: UIButton!
    @IBOutlet var txtOTPCollection: [UITextField]!
    
    enum Direction { case left, right }
    var textFieldsIndexes:[UITextField:Int] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextFields()
        setButton()
    }

    private func setTextFields(){
        
        for txt in txtOTPCollection{
            txt.delegate = self
            txt.textAlignment = .center
            txt.font = UIFont(name: Fonts.barlowRegular.rawValue, size: 20)
            txt.textColor = .white
            txt.keyboardType = .numberPad
        }
        
        for index in 0 ..< txtOTPCollection.count {
                textFieldsIndexes[txtOTPCollection[index]] = index
        }
    }
    
    private func setButton(){
        btnVerifyOTP.setTitleFont(font: Fonts.barlowRegular.rawValue, size: 18)
        btnVerifyOTP.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMinXMinYCorner,.layerMaxXMaxYCorner])
    }
    
    func setNextResponder(_ index:Int?, direction:Direction) {
        guard let index = index else { return }
        if direction == .left {
            index == 0 ?
                (_ = txtOTPCollection.first?.resignFirstResponder()) :
                (_ = txtOTPCollection[(index - 1)].becomeFirstResponder())
        } else {
            index == txtOTPCollection.count - 1 ?
                (_ = txtOTPCollection.last?.resignFirstResponder()) :
                (_ = txtOTPCollection[(index + 1)].becomeFirstResponder())
        }
    }
    
    
    @IBAction func btnOTPTapped(_ sender: UIButton) {
        let nextVC = HomeTabBarController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

extension OTPVerificationVC: UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if range.length == 0 {
            setNextResponder(textFieldsIndexes[textField], direction: .right)
            textField.text = string
            return true
        } else if range.length == 1 {
            setNextResponder(textFieldsIndexes[textField], direction: .left)
            textField.text = ""
            return false
        }
        return false
    }
}
