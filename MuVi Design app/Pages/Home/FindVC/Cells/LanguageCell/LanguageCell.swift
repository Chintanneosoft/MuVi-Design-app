//
//  LanguageCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 14/12/23.
//

import UIKit

class LanguageCell: UICollectionViewCell {

    @IBOutlet weak var lblLanguage: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }
    
    private func setUpUI(){
        lblLanguage.textColor = .white
        lblLanguage.setFont(font: Fonts.barlowRegular.rawValue, size: 17)
        self.layer.cornerRadius = 10
    }
    
    func setCellDetails(language: [String:Any]){
        lblLanguage.text = "\(String(describing: language["language"] ?? ""))"
        self.backgroundColor = language["color"] as? UIColor ?? .black
    }
}
