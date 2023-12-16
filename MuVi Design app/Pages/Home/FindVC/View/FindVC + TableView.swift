//
//  FindVC + TableView.swift
//  MuVi Design app
//
//  Created by Neosoft on 13/12/23.
//

import Foundation
import UIKit

//MARK: - TableView Delegate and DataSource
extension FindVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return 1
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let findCollectionCell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.FindCollectionCell.rawValue, for: indexPath) as? FindCollectionCell
        findCollectionCell?.currentSection = indexPath.section
        switch indexPath.section{
        case 0:
            findCollectionCell?.configureWithSection(indexPath.section)
        case 2:
            findCollectionCell?.backgroundColor = AppColors.opaqueBlackColor
        default:
            print()
        }
        return findCollectionCell ?? UITableViewCell()
    }
    
    // For Row Height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section{
        case 0:
            return UIScreen.main.bounds.width + 30
        case 1:
            return UIScreen.main.bounds.width + 40
        case 2:
            return UIScreen.main.bounds.width/3
        case 3:
            return UIScreen.main.bounds.width/1.4
        case 4:
            return UIScreen.main.bounds.width
        default:
            return UITableView.automaticDimension
        }
    }
    
    // For Header
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 40))
        
        let label = UILabel()
        label.setFont(font: Fonts.barlowRegular.rawValue, size: 22)
        label.textColor = .white
        
        switch section{
        case 0:
            label.text = Constants.browseByGenre.rawValue
        case 1:
            label.text = Constants.browseByExperience.rawValue
        case 2:
            label.text = Constants.languages.rawValue
            headerView.backgroundColor = AppColors.opaqueBlackColor
        case 3:
            label.text = Constants.popularSearches.rawValue
        case 4:
            label.text = Constants.popularCast.rawValue
        default:
            return UIView()
        }
        
        label.translatesAutoresizingMaskIntoConstraints = false
        headerView.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 40),
            label.centerYAnchor.constraint(equalTo: headerView.centerYAnchor, constant: 20)
        ])        
        return headerView
    }
    
    // For Footer
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 30))
        footerView.backgroundColor = AppColors.opaqueBlackColor
        return footerView
    }
    
}
