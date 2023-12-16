//
//  DiscoverVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 16/12/23.
//

import UIKit
//MARK: - DiscoverVC
class DiscoverVC: BaseVC {
    //MARK: - @IBOutlets
    @IBOutlet weak var discoverTableView: UITableView!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }

    private func setUpTableView(){
        discoverTableView.delegate = self
        discoverTableView.dataSource = self
        
        discoverTableView.registerNib(of: FindCollectionCell.self)
        
        discoverTableView.tableHeaderView = DiscoverHeaderView(frame: CGRect(x: 0, y: 0, width: Int(discoverTableView.bounds.width), height: 70))
    }
}
