//
//  WalkThrough.swift
//  MuVi Design app
//
//  Created by Neosoft on 01/12/23.
//

import UIKit

//MARK: - WalkThroughVC
class WalkThroughVC: BaseVC {
    
    @IBOutlet weak var walkThroughCollectionView: UICollectionView!
    
    var walkThroughData = ["0":[Constants.lbl.rawValue: Constants.walkThroughlbl1.rawValue,Constants.btn.rawValue:Constants.walkThroughbtn1.rawValue],"1":[Constants.lbl.rawValue:Constants.walkThroughlbl2.rawValue,Constants.btn.rawValue:Constants.walkThroughbtn2.rawValue]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
        
        navigationController?.navigationBar.isHidden = true
    }
    
    private func setCollectionView(){
        walkThroughCollectionView.isScrollEnabled = false
        
        walkThroughCollectionView.delegate = self
        walkThroughCollectionView.dataSource = self
        
        walkThroughCollectionView.register(UINib(nibName: CellNames.WalkThroughCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellNames.WalkThroughCell.rawValue)
    }

}

//MARK: - ShowNextPageDelegate
extension WalkThroughVC: ShowNextPageDelegate{
    func showNextPage(pageNumber: Int) {
        if pageNumber < walkThroughData.count - 1{
            walkThroughCollectionView.scrollToItem(at: IndexPath(item: pageNumber + 1, section: 0), at: .centeredHorizontally, animated: true)
        } else {
            let nextVC = PreferencesVC(nibName: VCNames.PreferencesVC.rawValue, bundle: nil)
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
}
