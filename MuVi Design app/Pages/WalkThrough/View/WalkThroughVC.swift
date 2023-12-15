//
//  WalkThrough.swift
//  MuVi Design app
//
//  Created by Neosoft on 01/12/23.
//

import UIKit

//MARK: - WalkThroughVC
class WalkThroughVC: BaseVC {
    //MARK: - @IBOutlets
    @IBOutlet weak var walkThroughCollectionView: UICollectionView!
    
    // variables
    var walkThroughData = ["0":[Constants.lbl.rawValue: Constants.walkThroughlblMovie.rawValue,Constants.btn.rawValue:Constants.walkThroughbtnNext.rawValue],"1":[Constants.lbl.rawValue:Constants.walkThroughlblSmooth.rawValue,Constants.btn.rawValue:Constants.walkThroughbtnGetStarted.rawValue]]
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    //MARK: - Functions
    private func setCollectionView(){
        walkThroughCollectionView.isScrollEnabled = false
        
        walkThroughCollectionView.delegate = self
        walkThroughCollectionView.dataSource = self
        
        walkThroughCollectionView.register(UINib(nibName: CellIdentifiers.WalkThroughCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.WalkThroughCell.rawValue)
    }
}

//MARK: - ShowNextPageDelegate
extension WalkThroughVC: ShowNextPageDelegate{
    func showNextPage(pageNumber: Int, isPageControl: Bool) {
        if isPageControl{
            walkThroughCollectionView.scrollToItem(at: IndexPath(item: pageNumber, section: 0), at: .centeredHorizontally, animated: true)
            walkThroughCollectionView.reloadData()
        } else {
            if pageNumber < walkThroughData.count - 1{
                walkThroughCollectionView.scrollToItem(at: IndexPath(item: pageNumber + 1, section: 0), at: .centeredHorizontally, animated: true)
            } else {
                let nextVC = PreferencesVC(nibName: VCNibs.PreferencesVC.rawValue, bundle: nil)
                navigationController?.pushViewController(nextVC, animated: true)
            }
        }
    }
}
