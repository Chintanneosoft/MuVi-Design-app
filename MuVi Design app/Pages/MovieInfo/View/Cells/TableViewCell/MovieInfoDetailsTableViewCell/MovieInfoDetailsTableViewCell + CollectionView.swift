//
//  MovieInfoDetailsTableViewCell + CollectionView.swift
//  MuVi Design app
//
//  Created by Neosoft on 26/12/23.
//

import Foundation
import UIKit
//MARK: - MovieInfoDetailsTableViewCell
extension MovieInfoDetailsTableViewCell:UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieViewModel.movieDetails?.cast?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let preferedExperienceCell = collectionView.getCell(indexPath: indexPath) as PreferedExperienceCell
        preferedExperienceCell.setCellForCast(cast:  movieViewModel.movieDetails?.cast?[indexPath.row] ?? Cast())
        return preferedExperienceCell
    }
}
