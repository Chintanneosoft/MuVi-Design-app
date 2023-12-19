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
        return 6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 2:
            let bestExperienceCell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.BestExperienceCell.rawValue, for: indexPath) as? BestExperienceCell
            bestExperienceCell?.backgroundColor = AppColors.opaqueBlackColor
            return bestExperienceCell ?? UITableViewCell()
        default:
            let discoverCollectionCell = tableView.getCell() as DiscoverCollectionCell
            discoverCollectionCell.configureWithSection(indexPath.section)
            if indexPath.section == 4{
                discoverCollectionCell.backgroundColor = AppColors.opaqueBlackColor
            }
            return discoverCollectionCell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section{
        case 0:
            return tableView.frame.width/1.3
        case 1,3,5:
            return tableView.frame.width/1.5
        case 2:
            return tableView.frame.width/2.8
        case 4:
            return tableView.frame.width/3
        default:
            return tableView.frame.width
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var headerView: UIView?
        switch section{
        case 0:
            let nib = UINib(nibName: CellIdentifiers.DiscoverHeaderView.rawValue, bundle: nil)
            if let view = nib.instantiate(withOwner: self, options: nil).first as? DiscoverHeaderView {
                view.frame = CGRect(x: 0, y: 0, width: Int(discoverTableView.bounds.width), height: 30)
                view.backgroundColor = .clear
                headerView = view
            }
        case 1,3,5:
            let nib = UINib(nibName: CellIdentifiers.DiscoverSectionHeaderView.rawValue, bundle: nil)
            if let view = nib.instantiate(withOwner: self, options: nil).first as? DiscoverSectionHeaderView {
                view.frame = CGRect(x: 0, y: 0, width: Int(tableView.bounds.width), height: 0)
                view.backgroundColor = .clear
                if section == 1{
                    view.setHeaderView(sectionHeading: Constants.RecommendedForYou.rawValue, btnTitle: Constants.ViewAll.rawValue)
                } else if section == 3 {
                    view.setHeaderView(sectionHeading: Constants.PopularMovies.rawValue, btnTitle: Constants.ViewAll.rawValue)
                } else {
                    view.setHeaderView(sectionHeading: Constants.UpcomingMovies.rawValue, btnTitle: Constants.ViewAll.rawValue)
                }
                headerView = view
            }
        default:
            headerView = UIView()
        }
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section{
        case 0:
            return 110
        case 1,3,5:
            return 60
        default:
            return 0
        }
    }
}
