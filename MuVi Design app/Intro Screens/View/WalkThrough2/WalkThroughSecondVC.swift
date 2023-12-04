//
//  WalkThroughVC2.swift
//  MuVi Design app
//
//  Created by Neosoft on 01/12/23.
//

import UIKit

class WalkThroughSecondVC: UIViewController {

    
    @IBOutlet weak var btnGetStarted: UIButton!
    @IBOutlet weak var lblSmooth: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI(){
        pageControl.currentPage = 1
        lblSmooth.setFont(font: Fonts.barlowRegular.rawValue, size: 26)
        
        setButton()
    }
    
    private func setButton(){
        btnGetStarted.setTitleFont(font: Fonts.barlowBold.rawValue, size: 15)
        btnGetStarted.applyGradient(colours: [AppColors.redColor, AppColors.purpleColor], angle: -45)
        btnGetStarted.clipsToBounds = true
        btnGetStarted.layer.cornerRadius = 20
        btnGetStarted.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMinYCorner]
    }

    @IBAction func btnGetStartedTapped(_ sender: UIButton) {
//        let nextVC = LoginViewController(nibName: "LoginViewController", bundle: nil)
        
        let nextVC = LoginVC(nibName: "LoginVC", bundle: nil)
        navigationController?.pushViewController(nextVC, animated: true)
    }


}
