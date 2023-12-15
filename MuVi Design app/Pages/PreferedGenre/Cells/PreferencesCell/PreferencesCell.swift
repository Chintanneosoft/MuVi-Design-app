//
//  PreferencesCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 04/12/23.
//

import UIKit
//MARK: - PreferencesCell
class PreferencesCell: UICollectionViewCell {

    //IBOutlet
    @IBOutlet weak var lblGenre: UILabel!
    
    //Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //Functions
    func setUpUI(lblText: String){
        lblGenre.setFont(font: Fonts.barlowRegular.rawValue, size: 16)
        lblGenre.text = lblText
    }
    
    func setCellBorder(color: UIColor){
        self.layer.borderColor = color.cgColor
        lblGenre.textColor = color
    }
}
