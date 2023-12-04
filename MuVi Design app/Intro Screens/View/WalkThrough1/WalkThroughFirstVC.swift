//
//  WalkThrough.swift
//  MuVi Design app
//
//  Created by Neosoft on 01/12/23.
//

import UIKit

class WalkThroughFirstVC: UIViewController {
    
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var lblMovieExp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI(){
        pageControl.currentPage = 0
        lblMovieExp.setFont(font: Fonts.barlowRegular.rawValue, size: 26)
        
        setButton()
    }
    
    private func setButton(){
        btnNext.setTitleFont(font: Fonts.barlowBold.rawValue, size: 15)
        btnNext.applyGradient(colours: [AppColors.redColor, AppColors.purpleColor], angle: -45)
        btnNext.clipsToBounds = true
        btnNext.layer.cornerRadius = 20
        btnNext.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMinYCorner]
    }

    @IBAction func btnNextTapped(_ sender: UIButton) {
        let nextVC = WalkThroughSecondVC(nibName: VCNames.WalkThroughSecondVC2.rawValue, bundle: nil)
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
}
