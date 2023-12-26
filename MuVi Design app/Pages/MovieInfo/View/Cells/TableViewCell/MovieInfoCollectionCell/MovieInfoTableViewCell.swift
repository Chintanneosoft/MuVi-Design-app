//
//  MovieInfoCollectionCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 26/12/23.
//

import UIKit
//MARK: - MovieInfoCollectionCell
class MovieInfoTableViewCell: UITableViewCell {
    //MARK: - @IBOutlets
    @IBOutlet weak var movieInfoCollectionView: UICollectionView!
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    //Functions
    private func setCollectionView(){
        movieInfoCollectionView.delegate = self
        movieInfoCollectionView.dataSource = self
        
        movieInfoCollectionView.register(UINib(nibName: CellIdentifiers.DiscoverRecommendationCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.DiscoverRecommendationCell.rawValue)
    }
}
