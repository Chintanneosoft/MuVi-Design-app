//
//  FindCollectionCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 13/12/23.
//

import UIKit

class FindCollectionCell: UITableViewCell {

    @IBOutlet weak var findCollectionView: UICollectionView!
    let preferenceVM = PreferencesViewModel()
    override func awakeFromNib() {
        super.awakeFromNib()
        setCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func setCollectionView(){
        findCollectionView.dataSource = self
        findCollectionView.delegate = self
        
        findCollectionView.register(UINib(nibName: CellNames.PreferencesCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellNames.PreferencesCell.rawValue)
        findCollectionView.register(UINib(nibName: CellNames.PreferedExperienceCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellNames.PreferedExperienceCell.rawValue)
    }
    
}

extension FindCollectionCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genres.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellNames.PreferencesCell.rawValue, for: indexPath) as? PreferencesCell
        cell?.setUpUI(lblText: genres["\(indexPath.row)"]?["genre"] as! String)
        cell?.layer.cornerRadius = 20
        cell?.layer.borderWidth = 1
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
