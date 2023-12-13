//
//  FindCollectionCell + CollectionView.swift
//  MuVi Design app
//
//  Created by Neosoft on 13/12/23.
//

import Foundation
import UIKit

extension FindCollectionCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch currentSection{
        case 0:
            return genres.count
        case 1:
            return cinemas.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        switch currentSection{
        case 0:
            let cell0 = collectionView.dequeueReusableCell(withReuseIdentifier: CellNames.PreferencesCell.rawValue, for: indexPath) as? PreferencesCell ?? PreferencesCell()
            cell0.setUpUI(lblText: genres["\(indexPath.row)"]?["genre"] as! String)
            cell0.layer.cornerRadius = 20
            cell0.layer.borderWidth = 1
            cell0.setCellBorder(color: .white)
            cell0.backgroundColor = AppColors.darkPurpleColor
            return cell0
        case 1:
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: CellNames.PreferedExperienceCell.rawValue, for: indexPath) as? PreferedExperienceCell ?? PreferedExperienceCell()
            cell1.setCellUI(img: UIImage(named: cinemas["\(indexPath.row)"]?["cinema"] ?? "") ?? UIImage() , lblText: cinemas["\(indexPath.row)"]?["cinema"] ?? "")
            cell1.lblCinema.textColor = .white
            return cell1
        default:
            print(cell)
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch currentSection{
        case 0:
            let cell = collectionView.cellForItem(at: indexPath) as? PreferencesCell
            cell?.setCellBorder(color: AppColors.secondary)
            genres["\(indexPath.row)"]?["selected"] = true
        case 1:
            let cell = collectionView.cellForItem(at: indexPath) as? PreferedExperienceCell
            cell?.setbuttonVisibility()
        default:
            print(currentSection)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        switch currentSection{
        case 0:
            let cell = collectionView.cellForItem(at: indexPath) as? PreferencesCell
            cell?.setCellBorder(color: .white)
            genres["\(indexPath.row)"]?["selected"] = false
        case 1:
            let cell = collectionView.cellForItem(at: indexPath) as? PreferedExperienceCell
            cell?.setbuttonVisibility()
        default:
            print(currentSection)
        }
    }
    
}

extension FindCollectionCell: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        switch currentSection{
        case 0:
            return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        default:
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        switch currentSection{
        case 0:
            return 2
        case 1:
            return 5
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch currentSection{
        case 0:
            let item = genres["\(indexPath.row)"]?["genre"] ?? ""
            let itemSize = (item as AnyObject).size(withAttributes: [
                NSAttributedString.Key.font : UIFont(name: Fonts.barlowRegular.rawValue, size: 18) as Any
            ])
            return CGSize(width: itemSize.width + 35, height: itemSize.height + 20)
        default:
            return CGSize(width: collectionView.bounds.width/3.3, height: collectionView.bounds.width/2)
        }
    }
}
