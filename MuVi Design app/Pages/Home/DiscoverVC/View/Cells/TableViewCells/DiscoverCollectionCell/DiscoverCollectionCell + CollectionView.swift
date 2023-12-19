//
//  DiscoverCollectionCell + CollectionView.swift
//  MuVi Design app
//
//  Created by Neosoft on 18/12/23.
//

import Foundation
import UIKit
//MARK: - CollectionView Delegate and Datasource
extension DiscoverCollectionCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
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
            return upcomingMovies.count
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch currentSection{
        case discoverSectionIndics["slider"]:
            let carouselCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.DiscoverSliderCell.rawValue, for: indexPath) as? DiscoverSliderCell
            carouselCell?.setCellDetails(movieDetails: newMovies["movie\(indexPath.row)"] ?? MovieDetails())
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
        case discoverSectionIndics["upcomingMovies"]:
            let upcomingMoviesCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.DiscoverRecommendationCell.rawValue, for: indexPath) as? DiscoverRecommendationCell
            upcomingMoviesCell?.setCellDetails(movieDetail: upcomingMovies["movie\(indexPath.row)"] ?? MovieDetails())
            upcomingMoviesCell?.setRatingConstrains(topConstraint: 0, trailingConstraint: 0)
            return upcomingMoviesCell ?? UICollectionViewCell()
        default:
            let recommendationCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.DiscoverRecommendationCell.rawValue, for: indexPath) as? DiscoverRecommendationCell
            recommendationCell?.setCellDetails(movieDetail: recommendedMovies["movie\(indexPath.row)"] ?? MovieDetails())
            return recommendationCell ?? UICollectionViewCell()
        }
        
    }
    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let currentPage = Int(scrollView.contentOffset.x / scrollView.frame.width)
//        discoverPageControl.currentPage = currentPage
//        discoverCollectionView.scrollToItem(at: IndexPath(item: currentPage, section: 0), at: .centeredHorizontally, animated: true)
//    }
}
//MARK: - CollectionView FlowLayout
extension DiscoverCollectionCell: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch currentSection{
        case 0:
            return CGSize(width: collectionView.bounds.width/1.3, height: collectionView.bounds.height)
        case 1,3,5:
            return CGSize(width: collectionView.bounds.width/2.8, height: collectionView.bounds.height)
        case 4:
            return CGSize(width: collectionView.bounds.width/3.3, height: 64)
        default:
            return CGSize(width: collectionView.bounds.width/1.3, height: collectionView.bounds.height)
        }
    }
}
