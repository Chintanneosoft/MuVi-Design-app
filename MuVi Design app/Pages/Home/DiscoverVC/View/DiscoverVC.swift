//
//  DiscoverVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 16/12/23.
//

import UIKit
//MARK: - DiscoverVC
class DiscoverVC: UIViewController {
    //MARK: - @IBOutlets
    @IBOutlet weak var discoverTableView: UITableView!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpUI()
    }
    
    private func setUpTableView(){
        discoverTableView.delegate = self
        discoverTableView.dataSource = self
        
        discoverTableView.registerNib(of: DiscoverCollectionCell.self)
        
        let nib = UINib(nibName: CellIdentifiers.DiscoverHeaderView.rawValue, bundle: nil)
        if let headerView = nib.instantiate(withOwner: self, options: nil).first as? DiscoverHeaderView {
            headerView.frame = CGRect(x: 0, y: 0, width: Int(discoverTableView.bounds.width), height: 0)
            discoverTableView.tableHeaderView = headerView
        }
        
        discoverTableView.layoutIfNeeded()
    }
    
    private func setUpUI(){
        self.view.applyGradient(colours: [AppColors.blackishPurleColor,AppColors.darkPurpleColor])
    }
}
