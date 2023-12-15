//
//  PreferedExperienceCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 07/12/23.
//

import UIKit
//MARK: - PreferedExperienceCell
class PreferedExperienceCell: UICollectionViewCell {
    //MARK: - @IBOutlets
    @IBOutlet weak var lblCinema: UILabel!
    @IBOutlet weak var imgCinema: UIImageView!
    @IBOutlet weak var btnChecked: UIButton!
    @IBOutlet weak var checkedView: UIView!
    @IBOutlet weak var lblProportionalWidth: NSLayoutConstraint!
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }

    //MARK: - Functions
    private func setUpUI(){
        btnChecked.applyGradient(colours: [AppColors.redColor, AppColors.purpleColor], angle: -45)
        btnChecked.setCornerRadius(cornerRadius: 10, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner],borderWidth: 0)
        imgCinema.layer.cornerRadius = 15
    }
    
    // For PreferedExperienceVC
    func setCellUI(img: UIImage, lblText: String){
        imgCinema.image = img
        lblCinema.text = lblText
    }
    
    func setbuttonVisibility(){
        checkedView.isHidden = !self.isSelected
    }
    
    // For FindVC
    func setCellForCast(cast:[String:String]) {
        setCellUI(img: UIImage(named: cast["image"] ?? "") ?? UIImage(), lblText: cast["name"] ?? "")
        
        imgCinema.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
               imgCinema.widthAnchor.constraint(equalToConstant: 78),
               imgCinema.heightAnchor.constraint(equalToConstant: 78)
           ])
           
        imgCinema.layer.cornerRadius = 39
        lblProportionalWidth.constant = 76
        lblCinema.textAlignment = .center
        lblCinema.textColor = .white
        lblCinema.setFont(font: Fonts.barlowRegular.rawValue, size: 12)
    }
}
