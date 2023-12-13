//
//  PreferencesVC + CollectionView.swift
//  MuVi Design app
//
//  Created by Neosoft on 04/12/23.
//

import Foundation
import UIKit

extension PreferencesVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genres.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellNames.PreferencesCell.rawValue, for: indexPath) as? PreferencesCell
        cell?.setUpUI(lblText: genres["\(indexPath.row)"]?["genre"] as! String)
        cell?.layer.cornerRadius = 20
        cell?.layer.borderWidth = 1
        cell?.setCellBorder(color: isAllSelected ? AppColors.secondary : AppColors.blackColor)
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? PreferencesCell
        cell?.setCellBorder(color: AppColors.secondary)
        genres["\(indexPath.row)"]?["selected"] = true
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? PreferencesCell
        cell?.setCellBorder(color: AppColors.blackColor)
        genres["\(indexPath.row)"]?["selected"] = false
    }
}

extension PreferencesVC: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let item = genres["\(indexPath.row)"]?["genre"] ?? ""
        let itemSize = (item as AnyObject).size(withAttributes: [
            NSAttributedString.Key.font : UIFont(name: Fonts.barlowRegular.rawValue, size: 18) as Any
           ])
        return CGSize(width: itemSize.width + 35, height: itemSize.height + 20)
    }
}
