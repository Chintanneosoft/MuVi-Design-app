//
//  DiscoverVC + TableView.swift
//  MuVi Design app
//
//  Created by Neosoft on 16/12/23.
//

import Foundation
import UIKit
//MARK: - TableView Delegate and DataSource
extension DiscoverVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let discoverCollectionCell = tableView.getCell() as DiscoverCollectionCell
        return discoverCollectionCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.width/1.3
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }

}
