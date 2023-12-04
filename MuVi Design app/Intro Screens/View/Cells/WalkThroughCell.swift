//
//  WalkThroughCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 04/12/23.
//

import UIKit

//MARK: - ShowNextPageDelegate Protocol
protocol ShowNextPageDelegate:NSObject{
    func showNextPage(pageNumber: Int)
}

class WalkThroughCell: UICollectionViewCell {
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var btn: UIButton!
    
    weak var showNextPageDelegate : ShowNextPageDelegate?
    
    var cellIndex = Int()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpUI()
    }
    
    private func setUpUI(){
        lbl.setFont(font: Fonts.barlowRegular.rawValue, size: 26)
    }
    
    private func setButton(btnTitle: String){
        
        btn.setTitleFont(font: Fonts.barlowBold.rawValue, size: 15)
        btn.setTitle(btnTitle, for: .normal)
        
        btn.applyGradient(colours: [AppColors.redColor, AppColors.purpleColor], angle: -45)
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 20
        btn.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMinYCorner]
    }
    
    func setDetails(lblText:String, pageNumber:Int, btnTitle: String){
        lbl.text = lblText
        pageControl.currentPage = pageNumber
        setButton(btnTitle: btnTitle)
    }
    
    @IBAction func btnTapped(_ sender: UIButton) {
        showNextPageDelegate?.showNextPage(pageNumber: pageControl.currentPage)
    }
}
