//
//  PreferencesVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 04/12/23.
//

import UIKit

class PreferencesVC: BaseVC {
    
    @IBOutlet weak var btnAll: UIButton!
    @IBOutlet weak var genreCollectionView: UICollectionView!
    
    let preferencesViewModel = PreferencesViewModel()
    var isAllSelected = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
        setUpUI()
    }
    
    private func setCollectionView(){
        genreCollectionView.delegate = self
        genreCollectionView.dataSource = self
        
        genreCollectionView.register(UINib(nibName: CellNames.PreferencesCell.rawValue , bundle: nil), forCellWithReuseIdentifier: CellNames.PreferencesCell.rawValue)
        
        genreCollectionView.allowsMultipleSelection = true
        genreCollectionView.collectionViewLayout = LeftAlignedCollectionViewFlowLayout()
    }
    
    private func setUpUI(){
        navigationController?.navigationBar.isHidden = true
        
        
        setButton()
    }
    
    private func setButton(){
        btnAll.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner])
    }
    
    private func goToNextVC(){
        let nextVC = CitySelectionVC(nibName: VCNames.CitySelectionVC.rawValue, bundle: nil)
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func btnAllTapped(_ sender: UIButton) {
        isAllSelected.toggle()
        genreCollectionView.reloadData()
        if isAllSelected{
            for i in 0..<genreCollectionView.numberOfItems(inSection: 0) {
                let indexPath = IndexPath(item: i, section: 0)
                genreCollectionView.selectItem(at: indexPath, animated: false, scrollPosition: [])
                preferencesViewModel.genres["\(i)"]?["selected"] = true
            }
        } else {
            for i in 0..<genreCollectionView.numberOfItems(inSection: 0) {
                let indexPath = IndexPath(item: i, section: 0)
                genreCollectionView.deselectItem(at: indexPath, animated: false)
                preferencesViewModel.genres["\(i)"]?["selected"] = false
            }
        }
        
        goToNextVC()
    }
}
