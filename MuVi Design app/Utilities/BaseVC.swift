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
        
//        if let statusBarHeight = UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.height {
//            view.frame = CGRect(x: 0, y: statusBarHeight, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - statusBarHeight)
//        }

    }
    
    func setUpBaseUI(){
        //Apply gradient background
        self.view.applyGradient(colours: [AppColors.primary, AppColors.darkPurpleColor])
    }

}
