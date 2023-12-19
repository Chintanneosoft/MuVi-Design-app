//
//  DiscoverCollectionCell.swift
//  MuVi Design app
//
//  Created by Neosoft on 18/12/23.
//

import UIKit
//MARK: - DiscoverCollectionCell
class DiscoverCollectionCell: UITableViewCell {
    //MARK: - @IBOutlets
    @IBOutlet weak var discoverCollectionView: UICollectionView!
    @IBOutlet weak var discoverPageControl: UIPageControl!
    
    //variable
    var currentSection = 0
    
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setCollectionView()
        setPageControl()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: - Functions
    private func setCollectionView(){
        discoverCollectionView.delegate = self
        discoverCollectionView.dataSource = self
          
        discoverCollectionView.register(UINib(nibName: CellIdentifiers.DiscoverRecommendationCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.DiscoverRecommendationCell.rawValue)
        discoverCollectionView.register(UINib(nibName: CellIdentifiers.DiscoverSliderCell.rawValue, bundle: nil), forCellWithReuseIdentifier: CellIdentifiers.DiscoverSliderCell.rawValue)
    }
    
    private func setPageControl(){
        discoverPageControl.numberOfPages = newMovies.count
        discoverPageControl.currentPage = 0
    }
    
    func configureWithSection(_ section: Int) {
        currentSection = section
        discoverPageControl.isHidden = !(section == 0)
    }
    
    //MARK: - @IBActions
    @IBAction func pageChange(_ sender: UIPageControl) {
        discoverCollectionView.isScrollEnabled = true
        discoverCollectionView.isPagingEnabled = true
        discoverCollectionView.scrollToItem(at: IndexPath(item: sender.currentPage, section: 0), at: .centeredHorizontally, animated: true)
    }
}
