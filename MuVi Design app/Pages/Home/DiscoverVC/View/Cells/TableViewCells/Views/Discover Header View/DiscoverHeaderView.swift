//
//  DiscoverHeaderView.swift
//  MuVi Design app
//
//  Created by Neosoft on 16/12/23.
//

import UIKit
//MARK: - DiscoverHeaderView
class DiscoverHeaderView: UIView {

    //MARK: - @IBOutlets
    @IBOutlet weak var lblDiscover: UILabel!
    @IBOutlet weak var lblWhatsNew: UILabel!
    @IBOutlet weak var btnProfilePic: UIButton!
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUIView()
    }
    
    private func setUpUIView(){
        lblDiscover.textColor = AppColors.whiteColor
        lblDiscover.setFont(font: Fonts.barlowRegular.rawValue, size: 36)
        lblDiscover.text = Constants.discover.rawValue
        
        lblWhatsNew.text = Constants.whatsNew.rawValue
        lblWhatsNew.textColor = AppColors.whiteColor
        lblWhatsNew.setFont(font: Fonts.barlowLight.rawValue, size: 16)
        lblWhatsNew.alpha = 0.8
    }
}
