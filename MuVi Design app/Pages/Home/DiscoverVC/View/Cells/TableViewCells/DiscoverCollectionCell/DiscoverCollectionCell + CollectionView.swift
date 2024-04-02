//
//  DiscoverCollectionCell + CollectionView.swift
//  MuVi Design app
//
//  Created by Neosoft on 18/12/23.
//

import Foundation
import UIKit
//MARK: - CollectionView Delegate and Datasource
extension DiscoverCollectionTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch currentSection{
        case 0:
            return newMovies.count
        case 1:
            return recommendedMovies.count
        case 3:
            return popularMovies.count
        case 4:
            return (languages.count + 1)
        case 5:
            return 2
        case 6:
            return upcomingMovies.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //print("collection",currentSection,discoverSectionIndics["upcoming"])
        switch currentSection{
        case discoverSectionIndics["slider"]:
            let carouselCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.DiscoverSliderCell.rawValue, for: indexPath) as? DiscoverSliderCell
            carouselCell?.setCellDetails(movieDetails: newMovies["movie\(indexPath.row)"] ?? MovieDetails())
            carouselCell?.discoverSliderCellDelegate = self
            return carouselCell ?? UICollectionViewCell()
        case discoverSectionIndics["recommended"]:
            let recommendationCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.DiscoverRecommendationCell.rawValue, for: indexPath) as? DiscoverRecommendationCell
            recommendationCell?.setCellDetails(movieDetail: recommendedMovies["movie\(indexPath.row)"] ?? MovieDetails())
            recommendationCell?.setRatingConstrains(topConstraint: 10, trailingConstraint: 10)
            return recommendationCell ?? UICollectionViewCell()
        case discoverSectionIndics["popular"]:
            let popularCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.DiscoverRecommendationCell.rawValue, for: indexPath) as? DiscoverRecommendationCell
            popularCell?.setCellDetails(movieDetail: popularMovies["movie\(indexPath.row)"] ?? MovieDetails())
            popularCell?.setRatingConstrains(topConstraint: 0, trailingConstraint: 0)
            return popularCell ?? UICollectionViewCell()
        case discoverSectionIndics["filterByLanguage"]:
            if indexPath.row == 0{
                let labelCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.PreferencesCell.rawValue, for: indexPath) as? PreferencesCell
                labelCell?.setLabelStyle(text: Constants.FilterbyLanguage.rawValue, font: Fonts.barlowBold.rawValue, size: 18, color: AppColors.whiteColor)
                return labelCell ?? UICollectionViewCell()
            } else {
                let languageCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.LanguageCell.rawValue, for: indexPath) as? LanguageCell
                languageCell?.setCellDetails(language: languages["language\(indexPath.row - 1)"] ?? LanguageDetails(name: "", langauge: "", color: UIColor(), movieCount: 0))
                languageCell?.setMovieCount(language: languages["language\(indexPath.row - 1)"] ?? LanguageDetails(name: "", langauge: "", color: UIColor(), movieCount: 0))
                return languageCell ?? UICollectionViewCell()
            }
        case discoverSectionIndics["grabPopcorn"]:
            let foodCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.FoodAdCell.rawValue, for: indexPath) as? FoodAdCell
            if indexPath.row == 0{
                foodCell?.configureCell(discount: 20, image: nil)
            } else {
                foodCell?.configureCell(discount: nil, image: UIImage(named: ImageStrings.movieFood.rawValue))
            }
            foodCell?.containerView.layer.cornerRadius = 50
            return foodCell ?? UICollectionViewCell()
        case discoverSectionIndics["upcoming"]:
            let upcomingMoviesCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.DiscoverRecommendationCell.rawValue, for: indexPath) as? DiscoverRecommendationCell
            upcomingMoviesCell?.setCellDetails(movieDetail: upcomingMovies["movie\(indexPath.row)"] ?? MovieDetails())
            upcomingMoviesCell?.setRatingConstrains(topConstraint: 0, trailingConstraint: 0)
            return upcomingMoviesCell ?? UICollectionViewCell()
        default:
            let upcomingMoviesCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.DiscoverRecommendationCell.rawValue, for: indexPath) as? DiscoverRecommendationCell
            upcomingMoviesCell?.setCellDetails(movieDetail: upcomingMovies["movie\(indexPath.row)"] ?? MovieDetails())
            upcomingMoviesCell?.setRatingConstrains(topConstraint: 0, trailingConstraint: 0)
            return upcomingMoviesCell ?? UICollectionViewCell()
        }
        
    }
    
    //    func scrollViewDidScroll(_ scrollView: UIScrollView) {
    //        let currentPage = Int(scrollView.contentOffset.x / scrollView.frame.width)
    //        discoverPageControl.currentPage = currentPage
    //        discoverCollectionView.scrollToItem(at: IndexPath(item: currentPage, section: 0), at: .centeredHorizontally, animated: true)
    //    }
}
//MARK: - CollectionView FlowLayout
extension DiscoverCollectionTableViewCell: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        switch currentSection{
        case 0,1,3,6:
            return 20
        default:
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        switch currentSection{
        case 1,3,6:
            return 100
        default:
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch currentSection{
        case 0:
            return CGSize(width: collectionView.bounds.width/1.3, height: collectionView.bounds.height)
        case 1,3,6:
            return CGSize(width: collectionView.bounds.width/2.6, height: collectionView.bounds.height)
        case 4:
            return CGSize(width: collectionView.bounds.width/3.3, height: 64)
        case 5:
            return CGSize(width: collectionView.bounds.height, height: collectionView.bounds.height)
        default:
            return CGSize(width: collectionView.bounds.width/1.3, height: collectionView.bounds.height)
        }
    }
}
