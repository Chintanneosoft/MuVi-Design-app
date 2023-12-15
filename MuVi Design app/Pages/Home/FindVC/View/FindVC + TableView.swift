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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section{
        case 0:
            return UIScreen.main.bounds.width + 30
        case 1:
            return UIScreen.main.bounds.width + 40
        case 2:
            return UIScreen.main.bounds.width/3
        case 4:
            return UIScreen.main.bounds.width/1.1
        default:
            return UITableView.automaticDimension
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 30))
        
        let label = UILabel()
        label.setFont(font: Fonts.barlowRegular.rawValue, size: 22)
        label.textColor = .white
        
        switch section{
        case 0:
            label.text = ScreenText.findSection0.rawValue
        case 1:
            label.text = ScreenText.findSection1.rawValue
        case 2:
            label.text = ScreenText.findSection2.rawValue
            headerView.backgroundColor = AppColors.opaqueBlackColor
        case 4:
            label.text = ScreenText.findSection4.rawValue
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
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 30))
        footerView.backgroundColor = AppColors.opaqueBlackColor
        return footerView
    }
    
}
