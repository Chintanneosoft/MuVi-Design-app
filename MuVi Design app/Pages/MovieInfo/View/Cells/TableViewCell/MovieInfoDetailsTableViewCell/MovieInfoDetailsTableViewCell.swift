//
//  MovieInfoDetailsTableViewCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 26/12/23.
//

import UIKit
//MARK: - MovieInfoDetailsTableViewCell
class MovieInfoDetailsTableViewCell: UITableViewCell {

    //MARK: - @IBOutlets
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var btnPlayTrailer: UIButton!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblMonthYear: UILabel!
    @IBOutlet weak var lblMovieName: UILabel!
    @IBOutlet weak var lblMovieGenre: UILabel!
    @IBOutlet weak var lblMovieInfo: UILabel!
    @IBOutlet weak var lblLanguageDuration: UILabel!
    @IBOutlet weak var lblDirectorName: UILabel!
    @IBOutlet weak var lblDirector: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblMovieCast: UILabel!
    @IBOutlet weak var movieCastCollectionView: UICollectionView!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblDescriptionDetail: UILabel!
    @IBOutlet weak var lblReview: UILabel!
    @IBOutlet weak var lblReviewDetails: UILabel!
    
    //variable
    var movieViewModel = MovieInfoViewModel()
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
        setCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func setUpUI(){
        lblRating.textColor = AppColors.blackColor
        lblRating.setFont(font: Fonts.barlowBold.rawValue, size: 17)
        lblRating.backgroundColor = AppColors.whiteColor
        
        lblMovieName.textColor = AppColors.whiteColor
        lblMovieName.setFont(font: Fonts.barlowRegular.rawValue, size: 30)
        
        lblMovieGenre.clipsToBounds = true
        lblMovieGenre.textColor = AppColors.whiteColor
        lblMovieGenre.setFont(font: Fonts.barlowBold.rawValue, size: 13)
        lblMovieGenre.layer.borderColor = AppColors.whiteColor.cgColor
        lblMovieGenre.layer.cornerRadius = 2
        
        lblMovieInfo.textColor = AppColors.grayColor
        lblMovieInfo.setFont(font: Fonts.barlowRegular.rawValue, size: 12)
        lblMovieInfo.text = Constants.movieInfo.rawValue
        
        lblLanguageDuration.textColor = AppColors.whiteColor
        lblLanguageDuration.setFont(font: Fonts.barlowBold.rawValue, size: 16)
        
        lblDirectorName.textColor = AppColors.whiteColor
        lblDirectorName.setFont(font: Fonts.barlowBold.rawValue, size: 14)
        
        lblDirector.textColor = AppColors.grayColor
        lblDirector.setFont(font: Fonts.barlowLight.rawValue, size: 12)
        lblDirector.text = Constants.director.rawValue
        
        lblMovieCast.textColor = AppColors.grayColor
        lblMovieCast.setFont(font: Fonts.barlowRegular.rawValue, size: 20)
        lblMovieCast.text = Constants.movieCast.rawValue
        
        lblDescription.textColor = AppColors.whiteColor
        lblDescription.setFont(font: Fonts.barlowBold.rawValue, size: 20)
        lblDescription.text = Constants.description.rawValue
    }
    
    private func setCollectionView(){
        movieCastCollectionView.dataSource = self
        movieCastCollectionView.delegate = self
        
        movieCastCollectionView.register(UINib(nibName: CellIdentifiers.PreferedExperienceCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.PreferedExperienceCell.rawValue)
    }
    
    private func configureCell(){
        lblRating.text = movieViewModel.movieDetails?.rating
        setLauchDate(date: movieViewModel.movieDetails?.launchDate ?? "")
        lblMovieName.text = movieViewModel.movieDetails?.name
        lblDirectorName.text = movieViewModel.movieDetails?.director
        lblMovieGenre.text = movieViewModel.movieDetails?.director
        lblLanguageDuration.text = movieViewModel.movieDetails.
    }
    
    func setLauchDate(date: String){
        let now = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "dd"
        let dayString = dateFormatter.string(from: now)
        
        dateFormatter.dateFormat = "MMM"
        let monthString = dateFormatter.string(from: now).uppercased()
        
        dateFormatter.dateFormat = "YYYY"
        let yearString = dateFormatter.string(from: now)
        
        let attributedDate = NSMutableAttributedString(string: dayString, attributes: [NSAttributedString.Key.font: UIFont(name: Fonts.barlowRegular.rawValue, size: 30) ?? UIFont(),NSAttributedString.Key.foregroundColor: AppColors.whiteColor])
        let attributedMonth = NSAttributedString(string: "\(monthString) \n\(yearString)", attributes: [NSAttributedString.Key.font: UIFont(name: Fonts.barlowBold.rawValue, size: 12) ?? UIFont(),NSAttributedString.Key.foregroundColor: AppColors.whiteColor])
        
        lblDate.attributedText = attributedDate
        lblLaunchMonth.attributedText = attributedMonth
    }
}
