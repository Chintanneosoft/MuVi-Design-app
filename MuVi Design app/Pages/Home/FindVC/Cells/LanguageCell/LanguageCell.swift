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
    @IBOutlet weak var lblMovieCount: UILabel!
    
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
    
    func setCellDetails(language: LanguageDetails){
        lblLanguage.text = "\(language.langauge ?? "")"
        self.backgroundColor = language.color ?? .black
    }
    
    func setMovieCount(language: LanguageDetails){
        lblMovieCount.isHidden = false
        lblMovieCount.textColor = AppColors.whiteColor
        lblMovieCount.setFont(font: Fonts.barlowBold.rawValue, size: 16)
        lblMovieCount.text = "\(language.movieCount ?? 0) Movies"
    }
}
