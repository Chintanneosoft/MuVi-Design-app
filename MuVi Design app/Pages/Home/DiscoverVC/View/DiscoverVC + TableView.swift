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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let findCollectionCell = tableView.getCell() as FindCollectionCell
        return findCollectionCell
    }
    
}
