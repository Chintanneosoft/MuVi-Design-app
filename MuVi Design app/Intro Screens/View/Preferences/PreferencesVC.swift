//
//  PreferencesVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 04/12/23.
//

import UIKit

class PreferencesVC: UIViewController {

    @IBOutlet weak var btnAll: UIButton!
    @IBOutlet weak var genreCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
    }
    
    private func setCollectionView(){
        genreCollectionView.delegate = self
        genreCollectionView.dataSource = self
        
        genreCollectionView.register(UINib(nibName: CellNames.PreferencesCell.rawValue , bundle: nil), forCellWithReuseIdentifier: CellNames.PreferencesCell.rawValue)
    }    
}
