//
//  PopularSearchCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 15/12/23.
//

import UIKit
//MARK: - PopularSearchCell
class PopularSearchCell: UICollectionViewCell {

    //MARK: - @IBOutlets
    @IBOutlet weak var popularSearchImg: UIImageView!
    @IBOutlet weak var lblMovieName: UILabel!
    @IBOutlet weak var lblGenre: UILabel!
    @IBOutlet weak var lblSearchBy: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblDuration: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCellUI()
    }
    
    private func setUpCellUI(){
        popularSearchImg.layer.cornerRadius = 10
        
        lblMovieName.textColor = AppColors.whiteColor
        lblMovieName.setFont(font: Fonts.barlowRegular.rawValue, size: 20)
        
        lblGenre.textColor = AppColors.whiteColor
        lblGenre.setFont(font: Fonts.barlowBold.rawValue, size: 15)
        
        lblSearchBy.textColor = AppColors.whiteColor
        lblSearchBy.setFont(font: Fonts.barlowLight.rawValue, size: 12)
        
        lblRating.textColor = AppColors.darkPurpleColor
        lblRating.backgroundColor = AppColors.whiteColor
        lblRating.setFont(font: Fonts.barlowBold.rawValue, size: 10)
        
        lblDuration.textColor = AppColors.whiteColor
        lblDuration.setFont(font: Fonts.barlowRegular.rawValue, size: 13)
    }
    
    func setCellDetails(movieDetails: [String:String]){
        lblMovieName.text = movieDetails["name"]
        lblGenre.text = movieDetails["genre"]
        lblRating.text = movieDetails["rating"]
        lblSearchBy.text = "\(Constants.searchedBy.rawValue) \((movieDetails["searchCount"] ?? "")) \(Constants.people.rawValue)"
        lblDuration.text = "\(Constants.duration.rawValue) \n \(movieDetails["duration"] ?? "")"
        popularSearchImg.image = UIImage(named: movieDetails["image"] ?? "")
    }
}
