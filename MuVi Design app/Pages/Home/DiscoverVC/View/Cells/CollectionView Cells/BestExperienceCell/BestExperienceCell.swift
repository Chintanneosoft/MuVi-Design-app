//
//  BestExperienceCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 19/12/23.
//

import UIKit
//MARK: - BestExperienceCell
class BestExperienceCell: UITableViewCell {

    //MARK: - @IBOutlets
    @IBOutlet weak var lblGetBestExperience: UILabel!
    @IBOutlet weak var lblMuvi: UILabel!
    @IBOutlet weak var containerView: UIView!
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }

    private func setUpUI(){
        lblGetBestExperience.textColor = AppColors.whiteColor
        lblGetBestExperience.setFont(font: Fonts.barlowRegular.rawValue, size: 16)
        lblGetBestExperience.text = Constants.GetTheBest.rawValue
        
        lblMuvi.textColor = AppColors.whiteColor
        lblMuvi.setFont(font: Fonts.barlowBold.rawValue, size: 36)
        lblMuvi.text = Constants.muviCinemas.rawValue
        
        containerView.clipsToBounds = true
        containerView.applyGradient(colours: [AppColors.redColor,UIColor(red: 230.0/255.0, green: 18.0/255.0, blue: 149.0/255.0, alpha: 1.0)],angle: -45)
        containerView.layer.cornerRadius = 10
    }
}
