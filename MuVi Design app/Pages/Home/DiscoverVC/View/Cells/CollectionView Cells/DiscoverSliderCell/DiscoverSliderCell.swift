//
//  DiscoverSliderCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 18/12/23.
//


import UIKit
//MARK: - DiscoverSliderCellDelegate
protocol DiscoverSliderCellDelegate:NSObject{
    func goToMovieDetails(movieDetail:MovieDetails)
}

//MARK: - DiscoverSliderCell
class DiscoverSliderCell: UICollectionViewCell {
    
    //MARK: - @IBOutlets
    @IBOutlet weak var imgComingSoon: UIImageView!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblMovieName: UILabel!
    @IBOutlet weak var lblGenre: UILabel!
    @IBOutlet weak var lblLaunchMonth: UILabel!
    @IBOutlet weak var btnPreBook: UIButton!
    @IBOutlet weak var btnInfo: UIButton!
    @IBOutlet weak var imgMovie: UIImageView!
    @IBOutlet weak var lblDate: UILabel!
    
    //variable
    weak var discoverSliderCellDelegate: DiscoverSliderCellDelegate?
    var movieDetails: MovieDetails?
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }
    
    private func setUpUI(){
        lblRating.clipsToBounds = true
        lblRating.setFont(font: Fonts.barlowBold.rawValue, size: 16)
        lblRating.backgroundColor = AppColors.whiteColor
        lblRating.layer.cornerRadius = 2
        
        lblMovieName.textColor = AppColors.whiteColor
        lblMovieName.setFont(font: Fonts.barlowRegular.rawValue, size: 28)
        
        lblGenre.clipsToBounds = true
        lblGenre.setFont(font: Fonts.barlowBold.rawValue, size: 12)
        lblGenre.textColor = AppColors.whiteColor
        lblGenre.layer.borderColor = AppColors.whiteColor.cgColor
        lblGenre.layer.borderWidth = 1
        lblGenre.layer.cornerRadius = 2
        
        btnPreBook.applyGradient(colours: [AppColors.redColor, AppColors.purpleColor], angle: -45)
        btnPreBook.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner], borderWidth: 0)
        btnPreBook.setTitleFont(font: Fonts.barlowBold.rawValue, size: 14)
        btnPreBook.titleLabel?.textColor = AppColors.whiteColor
        
        imgComingSoon.image = UIImage(named: ImageStrings.comingSoon.rawValue)
        imgMovie.contentMode = .scaleAspectFill
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
    
    func setCellDetails(movieDetails: MovieDetails){
        lblMovieName.text = movieDetails.name ?? ""
        lblGenre.text = "  \(movieDetails.genre ?? "")  "
        lblRating.text = "  \(movieDetails.rating ?? "")  "
        imgComingSoon.isHidden = !(movieDetails.isComingSoon ?? true)
        imgMovie.image = UIImage(named: movieDetails.image ?? "")
        btnPreBook.setTitle((movieDetails.isComingSoon ?? true) ? Constants.prebook.rawValue:Constants.watch.rawValue, for: .normal)
        setLauchDate(date: movieDetails.launchDate ?? "")
        self.movieDetails = movieDetails
    }
    
    @IBAction func btnPreBookTapped(_ sender: UIButton) {
        self.discoverSliderCellDelegate?.goToMovieDetails(movieDetail: movieDetails ?? MovieDetails())
    }
}
