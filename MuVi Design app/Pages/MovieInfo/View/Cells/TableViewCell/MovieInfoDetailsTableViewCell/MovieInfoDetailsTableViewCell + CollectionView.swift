//
//  MovieInfoDetailsTableViewCell + CollectionView.swift
//  MuVi Design app
//
//  Created by Neosoft on 26/12/23.
//

import Foundation
import UIKit
//MARK: - CollectionView Delegate and Datasource
extension MovieInfoDetailsTableViewCell:UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieDetails?.cast?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let preferedExperienceCell = collectionView.getCell(indexPath: indexPath) as PreferedExperienceCell
        preferedExperienceCell.setCellForCast(cast:  movieDetails?.cast?[indexPath.row] ?? Cast())
        preferedExperienceCell.lblCinema.alpha = 0.7
        return preferedExperienceCell
    }
}

//MARK: - CollectionView FlowLayout
extension MovieInfoDetailsTableViewCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/4.5, height: collectionView.bounds.height/1.2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
