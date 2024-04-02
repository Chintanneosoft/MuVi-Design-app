//
//  BaseVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 06/12/23.
//

import UIKit
//MARK: - BaseVC
class BaseVC: UIViewController {

    //MARK: - LifeCycle
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

    func createBarButtons(image: UIImage, action: Selector) -> UIBarButtonItem {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.clipsToBounds = true
        button.imageView?.frame = CGRect(x: 10, y: 10, width: 20, height: 20)
        button.imageView?.tintColor = .white
        button.setImage(image, for: .normal)
        button.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        button.addTarget(self, action: action, for: .touchUpInside)
        return UIBarButtonItem(customView: button)
    }
    
}
