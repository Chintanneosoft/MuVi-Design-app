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
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell =  UITableViewCell()
        switch indexPath.section{
        case 0:
            let sectionCell0 = tableView.dequeueReusableCell(withIdentifier: CellNames.FindCollectionCell.rawValue, for: indexPath) as? FindCollectionCell
            sectionCell0?.currentSection = 0
            return sectionCell0 ?? UITableViewCell()
        case 1:
            let sectionCell1 = tableView.dequeueReusableCell(withIdentifier: CellNames.FindCollectionCell.rawValue, for: indexPath) as? FindCollectionCell
            sectionCell1?.currentSection = 1
            return sectionCell1 ?? UITableViewCell()
        default:
            print(cell)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section{
        case 0:
            return UIScreen.main.bounds.width
        case 1:
            return UIScreen.main.bounds.width
        default:
            return UITableView.automaticDimension
        }
        return UITableView.automaticDimension
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
            label.text = "Browse By Experience"
        default:
            return UIView()
        }
        
        label.translatesAutoresizingMaskIntoConstraints = false
        headerView.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 40),
            label.centerYAnchor.constraint(equalTo: headerView.centerYAnchor)
        ])
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 30))
        footerView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
        return footerView
    }
    
}
