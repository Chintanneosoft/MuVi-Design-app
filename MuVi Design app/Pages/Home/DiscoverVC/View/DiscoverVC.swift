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
        
        discoverTableView.registerNib(of: BestExperienceCell.self)
        discoverTableView.registerNib(of: DiscoverCollectionCell.self)
    }
    
    private func setUpUI(){
        navigationController?.navigationBar.isHidden = true
        self.view.applyGradient(colours: [AppColors.blackishPurleColor,AppColors.darkPurpleColor])
    }
}
