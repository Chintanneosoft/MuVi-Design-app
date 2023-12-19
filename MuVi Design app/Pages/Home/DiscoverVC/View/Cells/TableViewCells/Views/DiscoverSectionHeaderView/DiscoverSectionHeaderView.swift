//
//  DiscoverSectionHeaderView.swift
//  MuVi Design app
//
//  Created by Neosoft on 19/12/23.
//

import UIKit

class DiscoverSectionHeaderView: UIView {

    @IBOutlet weak var lblSectionHeading: UILabel!
     @IBOutlet weak var btnViewAll: UIButton!
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUIView()
    }
    
    private func setUpUIView(){
        lblSectionHeading.textColor = AppColors.whiteColor
        lblSectionHeading.setFont(font: Fonts.barlowRegular.rawValue, size: 18)
        
        btnViewAll.setTitleFont(font: Fonts.barlowRegular.rawValue, size: 13)
        btnViewAll.backgroundColor = .clear
    }
    
    func setHeaderView(sectionHeading: String, btnTitle: String?){
        if btnTitle == nil{
            btnViewAll.isHidden = true
        } else {
            btnViewAll.setTitle(btnTitle, for: .normal)
        }
        lblSectionHeading.text = sectionHeading
    }
}
