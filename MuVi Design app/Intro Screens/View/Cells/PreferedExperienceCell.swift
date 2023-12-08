//
//  PreferedExperienceCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 07/12/23.
//

import UIKit

class PreferedExperienceCell: UICollectionViewCell {
    
    @IBOutlet weak var lblCinema: UILabel!
    @IBOutlet weak var imgCinema: UIImageView!
    @IBOutlet weak var btnChecked: UIButton!
    @IBOutlet weak var checkedView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }

    private func setUpUI(){
        btnChecked.applyGradient(colours: [AppColors.redColor, AppColors.purpleColor], angle: -45)
        btnChecked.setCornerRadius(cornerRadius: 10, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner],borderWidth: 0)
        imgCinema.layer.cornerRadius = 15
    }
    
    func setCellUI(img: UIImage, lblText: String){
        imgCinema.image = img
        lblCinema.text = lblText
    }
    
    func setbuttonVisibility(){
        checkedView.isHidden = !self.isSelected
    }
}
