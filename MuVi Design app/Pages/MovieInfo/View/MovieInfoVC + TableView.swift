//
//  MovieInfoVC + TableView.swift
//  MuVi Design app
//
//  Created by Neosoft on 20/12/23.
//

import Foundation
import UIKit
//MARK: - Tableview Delegate and Datasource
extension MovieInfoVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row{
        case 0:
            return UITableViewCell()
        case 1:
            let collectionCell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.MovieInfoTableViewCell.rawValue) as? MovieInfoTableViewCell
            return collectionCell ?? UITableViewCell()
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row{
        case 1:
            return tableView.frame.width/1.5
        default:
            return tableView.frame.height
        }
    }
}
