//
//  LoginVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 01/12/23.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var btnRegister: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
        
    }
    
    private func setUpUI(){
        self.view.applyGradient(colours:[UIColor(named: Constants.primary1.rawValue) ?? UIColor(), UIColor(named: Constants.primary2.rawValue) ?? UIColor()])
        
        btnRegister.clipsToBounds = true
        btnRegister.layer.cornerRadius = 20
        btnRegister.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMinYCorner]
        btnRegister.layer.borderColor = UIColor.black.cgColor
        btnRegister.layer.borderWidth = 1
    }

    @IBAction func btnRegisterTapped(_ sender: UIButton) {
        
    }
    

}
