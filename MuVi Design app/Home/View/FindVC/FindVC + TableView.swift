//
//  FindVC + TableView.swift
//  MuVi Design app
//
//  Created by Neosoft on 13/12/23.
//

import Foundation
import UIKit

extension FindVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return 1
        case 1:
            return 1
        default:
            return 2
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        switch indexPath.section{
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: CellNames.FindHeaderCell.rawValue, for: indexPath) as? FindHeaderCell ?? UITableViewCell()
        case 1:
            cell = tableView.dequeueReusableCell(withIdentifier: CellNames.FindCollectionCell.rawValue, for: indexPath) as? FindCollectionCell ?? UITableViewCell()
        default:
            print(cell)
        }
        return cell
    }
    
}
