//
//  FindCollectionCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 13/12/23.
//

import UIKit
//MARK: - FindCollectionCell
class FindCollectionTableViewCell: UITableViewCell {
    //MARK: - @IBOutlets
    @IBOutlet weak var findCollectionView: UICollectionView!
    
    //Variables
    let preferenceVM = PreferencesViewModel()
    var currentSection = 0
    var leftInset: CGFloat = 0
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: - Functions
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

        findCollectionView.registerNib(of: PreferencesCell.self)
        findCollectionView.registerNib(of: PreferedExperienceCell.self)
        findCollectionView.registerNib(of: LanguageCell.self)
        findCollectionView.registerNib(of: PopularSearchCell.self)
        
        findCollectionView.isScrollEnabled = false
    }
    
}
