//
//  FindVC.swift
//  MuVi Design app
//
//  Created by Neosoft on 12/12/23.
//

import UIKit

class FindVC: BaseVC {

    @IBOutlet weak var findTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
        setNeedsStatusBarAppearanceUpdate()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    private func setTableView(){
        findTableView.delegate = self
        findTableView.dataSource = self
        
        findTableView.register(UINib(nibName: CellNames.FindHeaderCell.rawValue, bundle: nil), forCellReuseIdentifier: CellNames.FindHeaderCell.rawValue)
        findTableView.register(UINib(nibName: CellNames.FindCollectionCell.rawValue, bundle: nil), forCellReuseIdentifier: CellNames.FindCollectionCell.rawValue)
    }

}
