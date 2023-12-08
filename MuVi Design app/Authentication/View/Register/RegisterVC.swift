//
//  RegisterVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 08/12/23.
//

import UIKit
import SKCountryPicker

class RegisterVC: BaseVC {

    @IBOutlet weak var txtPhoneNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI(){
        
        txtPhoneNumber.delegate = self
        txtPhoneNumber.setIcon(UIImage(named: "IndianFlag") ?? UIImage(), "+91", UIImage(systemName: "chevron.down")?.withTintColor(.white, renderingMode: .alwaysOriginal) ?? UIImage(), action: #selector(self.showCountryPicker), target: self)
        
        txtPhoneNumber.keyboardType = .numberPad

        let toolbar = UIToolbar()
        toolbar.sizeToFit()

        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonTapped))

        toolbar.setItems([flexSpace, doneButton], animated: false)

        txtPhoneNumber.inputAccessoryView = toolbar
    }
    
    @objc func showCountryPicker() {
        CountryPickerWithSectionViewController.presentController(on: self) { (country: Country) in

            if let leftView = self.txtPhoneNumber.leftView, leftView.subviews.count == 3 {
                if let imageView1 = leftView.subviews[0] as? UIImageView, let label = leftView.subviews[1] as? UILabel, let imageView2 = leftView.subviews[2] as? UIImageView {
                    imageView1.image = country.flag
                    label.text = country.dialingCode
                    imageView2.image = UIImage(systemName: "chevron.down")?.withTintColor(.white, renderingMode: .alwaysOriginal)
                }
            }
        }
    }
    
    @objc func doneButtonTapped() {
        txtPhoneNumber.resignFirstResponder()
    }
    
    @IBAction func btnRegisterWithEmailTapped(_ sender: UIButton) {
        let nextVC = OTPVerificationVC(nibName: VCNames.OTPVerificationVC.rawValue, bundle: nil)
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
}

extension RegisterVC: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtPhoneNumber.resignFirstResponder()
    }
}
