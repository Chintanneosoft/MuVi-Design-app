//
//  PreferencesVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 04/12/23.
//

import UIKit
//MARK: - PreferencesVC
class PreferencesVC: BaseVC {
    //MARK: - IBOutlets
    @IBOutlet weak var btnAll: UIButton!
    @IBOutlet weak var genreCollectionView: UICollectionView!
    @IBOutlet weak var lblDoYouHavePreference: UILabel!
    
    //variables
    let preferencesViewModel = PreferencesViewModel()
    var isAllSelected = false
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
        setUpUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    //MARK: - Functions
    private func setCollectionView(){
        genreCollectionView.delegate = self
        genreCollectionView.dataSource = self
        
        genreCollectionView.register(UINib(nibName: CellIdentifiers.PreferencesCell.rawValue , bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.PreferencesCell.rawValue)
        
        genreCollectionView.allowsMultipleSelection = true
        genreCollectionView.collectionViewLayout = LeftAlignedCollectionViewFlowLayout()
    }
    
    private func setUpUI(){
        lblDoYouHavePreference.setFont(font: Fonts.barlowRegular.rawValue, size: 30)
        setButton()
    }
    
    private func setButton(){
        btnAll.setCornerRadius(cornerRadius: 20, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMinYCorner])
    }
    
    private func goToNextVC(){
        let nextVC = CitySelectionVC(nibName: VCNibs.CitySelectionVC.rawValue, bundle: nil)
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    //MARK: - @IBActions
    @IBAction func btnAllTapped(_ sender: UIButton) {
        isAllSelected.toggle()
        genreCollectionView.reloadData()
        if isAllSelected{
            for i in 0..<genreCollectionView.numberOfItems(inSection: 0) {
                let indexPath = IndexPath(item: i, section: 0)
                genreCollectionView.selectItem(at: indexPath, animated: false, scrollPosition: [])
                genres["\(i)"]?["selected"] = true
            }
        } else {
            for i in 0..<genreCollectionView.numberOfItems(inSection: 0) {
                let indexPath = IndexPath(item: i, section: 0)
                genreCollectionView.deselectItem(at: indexPath, animated: false)
                genres["\(i)"]?["selected"] = false
            }
        }
        goToNextVC()
    }
}
