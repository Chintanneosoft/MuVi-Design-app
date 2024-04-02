//
//  FoodAdCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 20/12/23.
//

import UIKit
//MARK: - FoodAdCell
class FoodAdCell: UICollectionViewCell {
    //MARK: - @IBOutlets
    @IBOutlet weak var lblGrabTub: UILabel!
    @IBOutlet weak var lblPopCorn: UILabel!
    @IBOutlet weak var lblDiscount: UILabel!
    @IBOutlet weak var lblPercentage: UILabel!
    @IBOutlet weak var btnGrabNow: UIButton!
    @IBOutlet weak var imgFood: UIImageView!
    @IBOutlet weak var containerView: UIView!
    //MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }
    
    private func setUpUI(){
        lblGrabTub.text = Constants.GrabTub.rawValue
        lblGrabTub.textColor = AppColors.whiteColor
        lblGrabTub.setFont(font: Fonts.barlowRegular.rawValue, size: 16)
    
        lblPopCorn.text = "  \(Constants.popcorn.rawValue)  "
        lblPopCorn.textColor = AppColors.whiteColor
        lblPopCorn.setFont(font: Fonts.barlowBold.rawValue, size: 16)
        let popcornBackground = UIImage(named: ImageStrings.bookMark.rawValue)!
        lblPopCorn.backgroundColor = UIColor(patternImage: popcornBackground)
        
        lblDiscount.textColor = AppColors.whiteColor
    
        lblPercentage.text = "%"
        lblPercentage.textColor = AppColors.whiteColor
        lblPercentage.setFont(font: Fonts.barlowRegular.rawValue, size: 20)
        
        btnGrabNow.backgroundColor = AppColors.whiteColor
        btnGrabNow.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMaxXMaxYCorner,.layerMinXMinYCorner],borderWidth: 0)
        btnGrabNow.setAttributedString(text: Constants.GrabNow.rawValue, font: Fonts.barlowBold.rawValue, color: UIColor.red, size: 16)
        
        containerView.backgroundColor = AppColors.redColor
        
    }
    
    func configureCell(discount: Int?,image: UIImage?){
        if discount == nil{
            imgFood.clipsToBounds = true
            imgFood.isHidden = false
            imgFood.image = image
            imgFood.layer.cornerRadius =  50 
        } else {
            lblDiscount.text = "\(discount ?? 0)"
            lblDiscount.setFont(font: Fonts.barlowRegular.rawValue, size: 60)
        }
    }
}
