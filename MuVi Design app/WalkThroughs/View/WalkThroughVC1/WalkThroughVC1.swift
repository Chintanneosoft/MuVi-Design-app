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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    
    private func setUpUI(){
        pageControl.currentPage = 1
        
//        btnNext.applyGradient(colours: [], isHorizontal: <#T##Bool#>)
    }



}
