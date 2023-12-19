//
//  FindCollectionCell + CollectionView.swift
//  MuVi Design app
//
//  Created by Neosoft on 13/12/23.
//

import Foundation
import UIKit
//MARK: - CollectionView Delegate and DataSource
extension FindCollectionCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch currentSection{
        case 0:
            return genres.count
        case 1:
            return cinemas.count
        case 2:
            return languages.count
        case 3:
            return popularSearchData.count
        case 4:
            return popularCast.count
        default:
            return 0
        }
    }
    
    //MARK: - cellForItemAt
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell()
        switch currentSection{
        case 0:
            let preferencesCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.PreferencesCell.rawValue, for: indexPath) as? PreferencesCell ?? PreferencesCell()
            preferencesCell.setUpUI(lblText: genres["\(indexPath.row)"]?["genre"] as! String)
            preferencesCell.layer.cornerRadius = 20
            preferencesCell.layer.borderWidth = 1
            preferencesCell.setCellBorder(color: .white)
            preferencesCell.backgroundColor = AppColors.darkPurpleColor
            return preferencesCell
        case 1:
            let preferedExperienceCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.PreferedExperienceCell.rawValue, for: indexPath) as? PreferedExperienceCell ?? PreferedExperienceCell()
            preferedExperienceCell.setCellUI(img: UIImage(named: cinemas["\(indexPath.row)"]?["cinema"] ?? "") ?? UIImage() , lblText: cinemas["\(indexPath.row)"]?["cinema"] ?? "")
            preferedExperienceCell.lblCinema.textColor = .white
            return preferedExperienceCell
        case 2:
            let languageCell = collectionView.getCell(indexPath: indexPath) as LanguageCell
            languageCell.setCellDetails(language: languages["language\(indexPath.row)"] ?? LanguageDetails(name: "", langauge: "", color: UIColor(), movieCount: 0))
            return languageCell
        case 3:
            let popularSearchCell = collectionView.getCell(indexPath: indexPath) as PopularSearchCell
            popularSearchCell.setCellDetails(movieDetails: popularSearchData["movie\(indexPath.row)"] ?? MovieDetails())
            popularSearchCell.setCellSeparator()
            return popularSearchCell
        case 4:
            let preferedExperienceCell = collectionView.getCell(indexPath: indexPath) as PreferedExperienceCell
            preferedExperienceCell.setCellForCast(cast: popularCast["cast\(indexPath.row)"] ?? [:])
            return preferedExperienceCell
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

//MARK: - CollectionView Flowlayout
extension FindCollectionCell: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        switch currentSection{
        case 0:
            return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 10)
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
        case 2:
            return 10
        case 4:
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
        case 1:
            return CGSize(width: collectionView.bounds.width/3.3, height: collectionView.bounds.width/2)
        case 2:
            return CGSize(width: collectionView.bounds.width/3.3, height: 64)
        case 3:
            return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height/2)
        case 4:
            return CGSize(width: collectionView.bounds.width/4.2, height: collectionView.bounds.width/2.5 )
        default:
            return CGSize()
        }
    }
}
