//
//  BaseVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 06/12/23.
//

import UIKit

class BaseVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBaseUI()
    }
    
    func setUpBaseUI(){
        //Apply gradient background
        self.view.applyGradient(colours: [AppColors.primary, AppColors.darkPurpleColor])
    }

}
