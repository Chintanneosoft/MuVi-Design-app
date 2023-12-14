//
//  CitySelectionVC + CollectionView.swift
//  MuVi Design app
//
//  Created by Neosoft on 06/12/23.
//

import Foundation
import UIKit

extension CitySelectionVC: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0{
            print(section,citySelectionViewModel.nearByCities.count)
            return citySelectionViewModel.nearByCities.count
        }
        print(section,citySelectionViewModel.remainingCities.count)
        return citySelectionViewModel.remainingCities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.CitySelectionCell.rawValue, for: indexPath) as? CitySelectionCell
        print(indexPath.row)
        if indexPath.section == 0{
            cell?.setDetails(img: UIImage(named: citySelectionViewModel.nearByCities[indexPath.row]) ?? UIImage(), lblText: citySelectionViewModel.nearByCities[indexPath.row])
        } else {
            cell?.setDetails(img: UIImage(named: citySelectionViewModel.remainingCities[indexPath.row]) ?? UIImage(), lblText: citySelectionViewModel.remainingCities[indexPath.row])
        }
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? CitySelectionCell
        cell?.setBorderColor(color: AppColors.secondary)
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? CitySelectionCell
        cell?.removeBorder()
    }
    
    //MARK: - Footer
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionFooter {
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CellIdentifiers.FooterView.rawValue, for: indexPath)
            footerView.backgroundColor = AppColors.blackColor
            return footerView
        }
        return UICollectionReusableView()
    }

}

extension CitySelectionVC: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/3.5, height: collectionView.bounds.width/2.5)
    }
    
    //MARK: - footer
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        if section == 0 {
            return CGSize(width: 10, height: 0.5)
        } else {
            return CGSize.zero
        }
    }
}

