//
//  RegisterVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 08/12/23.
//

import UIKit
import SKCountryPicker
//MARK: - RegisterVC
class RegisterVC: BaseVC {
    //MARK: - @IBOutlets
    @IBOutlet weak var txtPhoneNumber: UITextField!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    //MARK: - Functions
    private func setUpUI(){
        txtPhoneNumber.delegate = self
        txtPhoneNumber.setIconWithLabel(UIImage(named: "IndianFlag") ?? UIImage(), "+91", UIImage(systemName: "chevron.down")?.withTintColor(.white, renderingMode: .alwaysOriginal) ?? UIImage(), action: #selector(self.showCountryPicker), target: self)
        txtPhoneNumber.keyboardType = .numberPad

        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonTapped))
        toolbar.setItems([flexSpace, doneButton], animated: false)
        txtPhoneNumber.inputAccessoryView = toolbar
    }
    
    //MARK: - @Objc Functions
    @objc func showCountryPicker() {
        //Country Picker Pod for DialingCode
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
    
    //MARK: - @IBActions
    @IBAction func btnRegisterWithEmailTapped(_ sender: UIButton) {
        let nextVC = OTPVerificationVC(nibName: VCNibs.OTPVerificationVC.rawValue, bundle: nil)
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

//MARK: - TextField Delegate
extension RegisterVC: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtPhoneNumber.resignFirstResponder()
    }
}
