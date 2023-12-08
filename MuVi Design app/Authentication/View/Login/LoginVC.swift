//
//  LoginVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 01/12/23.
//

import UIKit

class LoginVC: BaseVC {

    @IBOutlet weak var btnRegister: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    
    private func setUpUI(){
        navigationController?.navigationBar.isHidden = true
        setButton()
    }

    private func setButton(){
        btnRegister.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner])
    }
    
    @IBAction func btnRegisterTapped(_ sender: UIButton) {
        let nextVC = RegisterVC(nibName: VCNames.RegisterVC.rawValue, bundle: nil)
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func btnContinueTapped(_ sender: UIButton) {
        
    }
    
}
