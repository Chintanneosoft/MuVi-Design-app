//
//  LanguageCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 14/12/23.
//

import UIKit
//MARK: - LanguageCell
class LanguageCell: UICollectionViewCell {

    //IBOutlet
    @IBOutlet weak var lblLanguage: UILabel!
    
    //Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }
    
    //Functions
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
