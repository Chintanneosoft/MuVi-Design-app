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
        return newMovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let carouselCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.DiscoverSliderCell.rawValue, for: indexPath) as? DiscoverSliderCell
        
        carouselCell?.setCellDetails(movieDetails: newMovies["movie\(indexPath.row)"] ?? MovieDetails())
        return carouselCell ?? UICollectionViewCell()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let currentPage = Int(scrollView.contentOffset.x / scrollView.frame.width)
        discoverPageControl.currentPage = currentPage
        discoverCollectionView.scrollToItem(at: IndexPath(item: currentPage, section: 0), at: .centeredHorizontally, animated: true)
    }
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
        switch cellSection{
        case 0:
            return CGSize(width: collectionView.bounds.width/1.3, height: collectionView.bounds.height)
        default:
            return CGSize(width: collectionView.bounds.width/1.3, height: collectionView.bounds.height)
        }
    }
}
