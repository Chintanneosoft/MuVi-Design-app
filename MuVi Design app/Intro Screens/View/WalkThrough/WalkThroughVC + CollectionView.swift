//
//  WalkThroughVC + CollectionView.swift
//  MuVi Design app
//
//  Created by Neosoft on 04/12/23.
//

import Foundation
import UIKit

//MARK: - Delegate and DataSource
extension WalkThroughVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.WalkThroughCell.rawValue, for: indexPath) as? WalkThroughCell
        cell?.showNextPageDelegate = self
        cell?.setDetails(lblText: walkThroughData["\(indexPath.row)"]?["\(Constants.lbl.rawValue)"] ?? "" , pageNumber: indexPath.row, btnTitle: walkThroughData["\(indexPath.row)"]?[Constants.btn.rawValue] ?? "")
        return cell ?? UICollectionViewCell()
    }
}

//MARK: - FlowLayout
extension WalkThroughVC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
