//
//  CitySelectionCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 06/12/23.
//

import UIKit

class CitySelectionCell: UICollectionViewCell {
    
    @IBOutlet weak var cityImg: UIImageView!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var imgContainerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setDetails(img: UIImage, lblText: String){
        cityImg.image = img
        lblCity.text = lblText
    }
    
    func setBorderColor(color: UIColor){
        imgContainerView.clipsToBounds = true
        imgContainerView.layer.cornerRadius = imgContainerView.bounds.width/2
        imgContainerView.layer.borderColor = color.cgColor
        imgContainerView.layer.borderWidth = 1
        lblCity.textColor = color
    }
    
    func removeBorder(){
        imgContainerView.layer.borderWidth = 0
        lblCity.textColor = AppColors.blackColor
    }
}
