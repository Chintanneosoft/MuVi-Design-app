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
        lblGenre.setFont(font: Fonts.barlowBold.rawValue, size: 15)
        lblGenre.text = lblText
        lblGenre.layer.cornerRadius = 5
        lblGenre.layer.borderWidth = 1
        lblGenre.layer.borderColor = UIColor.black.cgColor
    }

}
