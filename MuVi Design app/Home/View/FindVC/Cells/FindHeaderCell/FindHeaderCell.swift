//
//  FindHeaderCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 13/12/23.
//

import UIKit

class FindHeaderCell: UITableViewCell {
    //MARK: - IBOutlets
    @IBOutlet weak var lblSearch: UILabel!
    @IBOutlet weak var lblFindMovies: UILabel!
    @IBOutlet weak var btnApply: UIButton!
    @IBOutlet weak var btnVoiceSearch: UIButton!
    @IBOutlet weak var txtSearch: UITextField!
    @IBOutlet weak var txtContainerView: UIView!
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //Setting UI
    private func setUpUI(){
        
        txtContainerView.clipsToBounds = true
        txtContainerView.layer.cornerRadius = 10
        
        lblSearch.text = ScreenText.search.rawValue
        lblSearch.setFont(font: Fonts.barlowRegular.rawValue, size: 36)
        lblSearch.textColor = .white
        
        lblFindMovies.text = ScreenText.lblFindMovies.rawValue
        lblFindMovies.setFont(font: Fonts.barlowLight.rawValue, size: 16)
        lblFindMovies.textColor = .white
        
        btnApply.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMinXMinYCorner,.layerMaxXMaxYCorner],borderWidth: 0)
        btnApply.setAttributedString(text: ScreenText.btnApply.rawValue, font: Fonts.barlowBold.rawValue, color: AppColors.primary, size: 16)
        btnApply.backgroundColor = .white
        
        setTextField()
        
    }
    
    private func setTextField(){
        
        let leftImage = UIImage(named: ImageNames.findImg.rawValue)
        leftImage?.withRenderingMode(.alwaysTemplate)
        
        txtSearch.textColor = .white
        txtSearch.setIcon(leftImage ?? UIImage(systemName: "heart")!, action: nil, target: nil)
        txtSearch.setAttributedPlaceholder(placeHolder: ScreenText.txtSearchbyName.rawValue, color: .white, font: Fonts.barlowLight.rawValue, size: 18)
        txtSearch.font = UIFont.appFont(font: Fonts.barlowRegular.rawValue, size: 18)
    }
    
    
}
