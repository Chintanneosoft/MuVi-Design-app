//
//  WalkThrough.swift
//  MuVi Design app
//
//  Created by Neosoft on 01/12/23.
//

import UIKit

class WalkThroughVC1: UIViewController {
    
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var lblMovieExp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()

    }
    
    private func setUpUI(){
        pageControl.currentPage = 1
        lblMovieExp.setFont(font: Fonts.barlowRegular.rawValue, size: 30)
        
        btnNext.setTitleFont(font: Fonts.barlowRegular.rawValue, size: 18)
        btnNext.applyGradient(colours: [UIColor.red, UIColor.blue], isHorizontal: true)
    }



}
