//
//  WalkThrough.swift
//  MuVi Design app
//
//  Created by Neosoft on 01/12/23.
//

import UIKit

class WalkThroughVC: UIViewController {

    @IBOutlet weak var walkThroughCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
    }

    private func setCollectionView(){
        
        walkThroughCollectionView.delegate = self
        walkThroughCollectionView.dataSource = self
        
        walkThroughCollectionView.register(UINib(nibName: CellNames.WalkThroughCell1.rawValue, bundle: nil), forCellWithReuseIdentifier: CellNames.WalkThroughCell1.rawValue)
        walkThroughCollectionView.register(UINib(nibName: CellNames.WalkThroughCell2.rawValue, bundle: nil), forCellWithReuseIdentifier: CellNames.WalkThroughCell2.rawValue)
    }


}

extension WalkThroughVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell?
        if indexPath.row == 1{
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellNames.WalkThroughCell1.rawValue, for: indexPath) 
        }
        
    }
    
    
}
