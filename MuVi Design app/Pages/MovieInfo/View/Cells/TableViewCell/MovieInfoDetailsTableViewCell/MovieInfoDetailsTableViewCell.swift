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
    var movieDetails:MovieDetails?
    let gradientLayer = CAGradientLayer()
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
        setCollectionView()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = movieImg.bounds
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func setUpUI(){
        //Labels
        lblRating.clipsToBounds = true
        lblRating.textColor = AppColors.blackColor
        lblRating.setFont(font: Fonts.barlowBold.rawValue, size: 17)
        lblRating.backgroundColor = AppColors.whiteColor
        lblRating.layer.cornerRadius = 2
        
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
        
        lblDescriptionDetail.textColor = AppColors.whiteColor
        lblDescriptionDetail.setFont(font: Fonts.barlowRegular.rawValue, size: 16)
        lblDescriptionDetail.text = Constants.description.rawValue
        
        lblReview.textColor = AppColors.whiteColor
        lblReview.setFont(font: Fonts.barlowBold.rawValue, size: 20)
        lblReview.text = Constants.reviews.rawValue
        
        lblReviewDetails.textColor = AppColors.whiteColor
        lblReviewDetails.setFont(font: Fonts.barlowRegular.rawValue, size: 16)
        lblReviewDetails.text = Constants.description.rawValue
                
        //Button
        let imageSize = btnPlayTrailer.imageView!.image!.size
        let titleSize = btnPlayTrailer.titleLabel!.bounds.size
        btnPlayTrailer.setTitleFont(font: Fonts.barlowBold.rawValue, size: 12)
        btnPlayTrailer.setTitle(Constants.playTrailer.rawValue, for: .normal)
        btnPlayTrailer.setTitleColor(AppColors.whiteColor, for: .normal)
        var configuration = UIButton.Configuration.plain()
        configuration.imagePlacement = .top
        configuration.titlePadding =  -imageSize.height
        btnPlayTrailer.configuration = configuration

        //Image
        gradientLayer.frame = movieImg.bounds
        let colors = [
            UIColor.clear.cgColor,
            AppColors.blackishPurleColor.cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.colors = colors
        gradientLayer.locations = [0.3, 0.9, 1.0]
        movieImg.layer.addSublayer(gradientLayer)
        print(gradientLayer.frame, movieImg.frame)
    }
    
    private func setCollectionView(){
        movieCastCollectionView.dataSource = self
        movieCastCollectionView.delegate = self
        
        movieCastCollectionView.register(UINib(nibName: CellIdentifiers.PreferedExperienceCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.PreferedExperienceCell.rawValue)
    }
    
    func configureCell(movieDetails: MovieDetails){
        lblRating.text = "  \(movieDetails.rating ?? "")  "
        setLauchDate(date: movieDetails.launchDate ?? "")
        lblMovieName.text = movieDetails.name
        lblDirectorName.text = movieDetails.director
        lblMovieGenre.text = movieDetails.genre
        lblLanguageDuration.text = "\(movieDetails.language?.name ?? "") | \(movieDetails.duration ?? "")"
        lblDescriptionDetail.text = movieDetails.description
        lblReviewDetails.text = movieDetails.review
        movieImg.image = UIImage(named: movieDetails.image ?? "")
        self.movieDetails = movieDetails
//        NSLayoutConstraint.activate([
//            self.movieImg.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.45, constant: 0)
//        ])
        self.layoutSubviews()
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
        lblMonthYear.attributedText = attributedMonth
    }
}
