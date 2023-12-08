//
//  PreferedExperienceVC + CollectionView.swift
//  MuVi Design app
//
//  Created by Neosoft on 07/12/23.
//

import Foundation
import UIKit

extension PreferedExperienceVC: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return preferedExperienceViewModel.cinemas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellNames.PreferedExperienceCell.rawValue, for: indexPath) as? PreferedExperienceCell
        cell?.setCellUI(img: UIImage(named: preferedExperienceViewModel.cinemas["\(indexPath.row)"]?["cinema"] ?? "") ?? UIImage() , lblText: preferedExperienceViewModel.cinemas["\(indexPath.row)"]?["cinema"] ?? "")
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? PreferedExperienceCell
        preferedExperienceViewModel.selectedExperience = preferedExperienceViewModel.cinemas["\(indexPath.row)"]?["cinema"] ?? ""
        btnProceed.setTitle(ScreenText.btnProceed.rawValue, for: .normal)
        cell?.setbuttonVisibility()
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? PreferedExperienceCell
        cell?.setbuttonVisibility()
    }
}

extension PreferedExperienceVC: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/3.3, height: collectionView.bounds.width/2)
    }
}