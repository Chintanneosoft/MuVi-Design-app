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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            let movieDetailsCell = tableView.getCell() as MovieInfoDetailsTableViewCell
            movieDetailsCell.configureCell(movieDetails: movieViewModel.movieDetails ?? MovieDetails())
            return movieDetailsCell
        case 1:
            let collectionCell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.MovieInfoTableViewCell.rawValue) as? MovieInfoTableViewCell
            return collectionCell ?? UITableViewCell()
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section{
        case 0:
            return UITableView.automaticDimension
        case 1:
            return tableView.frame.width/1.5
        default:
            return tableView.frame.height * 1.4
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 1{
            var headerView: UIView?
            let nib = UINib(nibName: CellIdentifiers.DiscoverSectionHeaderView.rawValue, bundle: nil)
            if let view = nib.instantiate(withOwner: self, options: nil).first as? DiscoverSectionHeaderView {
                view.frame = CGRect(x: 0, y: 0, width: Int(tableView.bounds.width), height: 0)
                view.backgroundColor = .clear
                view.setHeaderView(sectionHeading: Constants.youMightAlsoLike.rawValue, btnTitle: Constants.ViewAll.rawValue)
                headerView = view
            }
            return headerView
        }
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 1{
            return 60
        }
        return 0
    }
}
