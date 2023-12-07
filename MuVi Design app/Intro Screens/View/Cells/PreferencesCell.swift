//
//  PreferencesCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 04/12/23.
//

import UIKit

class PreferencesCell: UICollectionViewCell {

    @IBOutlet weak var lblGenre: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUpUI(lblText: String){
        lblGenre.setFont(font: Fonts.barlowRegular.rawValue, size: 18)
        lblGenre.text = lblText
    }
    
    func setCellBorder(color: UIColor){
        self.layer.borderColor = color.cgColor
        lblGenre.textColor = color
    }
}
