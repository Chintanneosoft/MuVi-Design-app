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
    var currentSection = 0
    
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
        
        findCollectionView.isScrollEnabled = false
        
        if currentSection == 0{
            findCollectionView.collectionViewLayout = LeftAlignedCollectionViewFlowLayout()
        }
    }
    
}
