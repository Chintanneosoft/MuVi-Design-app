//
//  LoginVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 01/12/23.
//

import UIKit
//MARK: - LoginVC
class LoginVC: BaseVC {

    //MARK: - @IBOutlets
    @IBOutlet weak var btnRegister: UIButton!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    //MARK: - Functions
    private func setUpUI(){
        setButton()
    }

    private func setButton(){
        btnRegister.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner])
    }
    
    //MARK: - @IBActions
    @IBAction func btnRegisterTapped(_ sender: UIButton) {
        let nextVC = RegisterVC(nibName: VCNibs.RegisterVC.rawValue, bundle: nil)
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func btnContinueTapped(_ sender: UIButton) {
        
    }
    
}
