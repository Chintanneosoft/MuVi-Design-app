//
//  DiscoverHeaderView.swift
//  MuVi Design app
//
//  Created by Neosoft on 16/12/23.
//

import UIKit

class DiscoverHeaderView: UIView {

    @IBOutlet weak var lblDiscover: UILabel!
    @IBOutlet weak var lblWhatsNew: UILabel!
    @IBOutlet weak var btnProfilePic: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUIView()
    }
    
    private func setUpUIView(){
        lblDiscover.text = Constants.discover.rawValue
        lblDiscover.textColor = AppColors.whiteColor
        lblDiscover.setFont(font: Fonts.barlowRegular.rawValue, size: 36)
        
        lblWhatsNew.text = Constants.whatsNew.rawValue
        lblWhatsNew.textColor = AppColors.whiteColor
        lblWhatsNew.setFont(font: Fonts.barlowLight.rawValue, size: 16)
    }
}
