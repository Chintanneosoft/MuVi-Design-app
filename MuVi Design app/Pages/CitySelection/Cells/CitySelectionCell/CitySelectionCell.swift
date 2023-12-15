//
//  CitySelectionCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 06/12/23.
//

import UIKit
//MARK: - CitySelectionCell
class CitySelectionCell: UICollectionViewCell {
    //MARK: - @IBOutlets
    @IBOutlet weak var cityImg: UIImageView!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var cityImgContainerView: UIView!
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - Functions
    func setDetails(img: UIImage, lblText: String){
        cityImg.image = img
        lblCity.text = lblText
    }
    
    func setBorderColor(color: UIColor){
        cityImgContainerView.clipsToBounds = true
        cityImgContainerView.layer.cornerRadius = cityImgContainerView.bounds.width/2
        cityImgContainerView.layer.borderColor = color.cgColor
        cityImgContainerView.layer.borderWidth = 1
        lblCity.textColor = color
    }
    
    func removeBorder(){
        cityImgContainerView.layer.borderWidth = 0
        lblCity.textColor = AppColors.blackColor
    }
}
