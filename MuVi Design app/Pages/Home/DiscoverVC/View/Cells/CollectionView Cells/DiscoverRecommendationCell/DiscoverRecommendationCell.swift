//
//  DiscoverRecommendationCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 18/12/23.
//

import UIKit
//MARK: - DiscoverRecommendationCell
class DiscoverRecommendationCell: UICollectionViewCell {
    
    //MARK: - @IBOutlets
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var imgMovie: UIImageView!
    @IBOutlet weak var lblMovieName: UILabel!
    @IBOutlet weak var lblMovieCategory: UILabel!
    @IBOutlet weak var lblRatingTop: NSLayoutConstraint!
    @IBOutlet weak var lblRatingTrailing: NSLayoutConstraint!
    @IBOutlet weak var btnPlay: UIButton!
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }
    
    private func setUpUI(){
        lblRating.clipsToBounds = true
        lblRating.setFont(font: Fonts.barlowBold.rawValue, size: 13)
        lblRating.backgroundColor = AppColors.whiteColor
        lblRating.layer.cornerRadius = 2
        
        lblMovieName.setFont(font: Fonts.barlowRegular.rawValue, size: 16)
        lblMovieName.textColor = AppColors.whiteColor
        
        lblMovieCategory.setFont(font: Fonts.barlowRegular.rawValue, size: 12)
        lblMovieCategory.textColor = AppColors.whiteColor
        lblMovieCategory.alpha = 0.7
        
        imgMovie.clipsToBounds = true
        imgMovie.layer.cornerRadius = 10
        imgMovie.contentMode = .scaleAspectFill
    }
    
    func setCellDetails(movieDetail: MovieDetails){
        lblMovieName.text = movieDetail.name ?? ""
        lblMovieCategory.text = movieDetail.genre ?? ""
        lblRating.text = " \(movieDetail.rating ?? "") "
        imgMovie.image = UIImage(named: movieDetail.image ?? "")
    }
    
    func setRatingConstrains(topConstraint: CGFloat, trailingConstraint: CGFloat){
        lblRatingTop.constant = topConstraint
        lblRatingTrailing.constant = trailingConstraint
    }
    
}
