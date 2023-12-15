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
    var leftInset: CGFloat = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureWithSection(_ section: Int) {
        if section == 0{
            findCollectionView.collectionViewLayout = LeftAlignedCollectionViewFlowLayout()
            NSLayoutConstraint.activate([
                self.findCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30)
            ])
        }
       }
    
    private func setCollectionView(){
        findCollectionView.dataSource = self
        findCollectionView.delegate = self
        
        findCollectionView.register(UINib(nibName: CellIdentifiers.PreferencesCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.PreferencesCell.rawValue)
        findCollectionView.register(UINib(nibName: CellIdentifiers.PreferedExperienceCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.PreferedExperienceCell.rawValue)
        
//        findCollectionView.register(UINib(nibName: CellIdentifiers.LanguageCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.LanguageCell.rawValue)
        findCollectionView.registerNib(of: LanguageCell.self)
        findCollectionView.registerNib(of: CitySelectionCell.self)
        
        findCollectionView.isScrollEnabled = false
    
    }
    
}
