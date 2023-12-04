//
//  PreferencesVC + CollectionView.swift
//  MuVi Design app
//
//  Created by Neosoft on 04/12/23.
//

import Foundation
import UIKit

var genres = ["0":"DRAMA","1":"HORROR","2":"ACTION","3":"ADVENTURE","4":"ROMANTIC","5":"COMEDY","6":"CRIME","7":"SCI-FI","8":"CLASSIC","9":"BIOGRAPHY","10":"KIDS","11":"THRILLER","12":"FAMILY","13":"3D","14":"ANIMATION"]

extension PreferencesVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genres.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellNames.PreferencesCell.rawValue, for: indexPath) as? PreferencesCell
        cell?.setUpUI(lblText: genres["\(indexPath.row)"] ?? "")
        return cell ?? UICollectionViewCell()
    }
    
}

extension PreferencesVC: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/4, height: 20)
      }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
