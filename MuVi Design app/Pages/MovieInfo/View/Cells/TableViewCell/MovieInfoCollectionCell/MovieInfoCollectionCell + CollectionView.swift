//
//  MovieInfoCollectionCell + CollectionView.swift
//  MuVi Design app
//
//  Created by Neosoft on 26/12/23.
//

import Foundation
import UIKit
//MARK: - CollectionView Delegate and Datasource
extension MovieInfoTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mightLikeMovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let mightLikeCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.DiscoverRecommendationCell.rawValue, for: indexPath) as? DiscoverRecommendationCell
        mightLikeCell?.setCellDetails(movieDetail: (mightLikeMovies["movie\(indexPath.row)"] ?? MovieDetails()) )
        return mightLikeCell ?? UICollectionViewCell()
    }
}
//MARK: - CollectionView FlowLayout
extension MovieInfoTableViewCell: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/2.6, height: collectionView.bounds.height)
        
    }
}

