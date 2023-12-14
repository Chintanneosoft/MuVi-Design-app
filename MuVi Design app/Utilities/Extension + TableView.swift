//
//  Extension + TableView.swift
//  MuVi Design app
//
//  Created by Neosoft on 14/12/23.
//

import Foundation
import UIKit

extension UITableView {
    func getCell<T:UITableViewCell>(identifier:String = T.className) -> T {
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
    
    func registerCell<T:UITableViewCell>(of: T.Type) {
        self.register(T.self, forCellReuseIdentifier: T.className)
    }
    
    func registerNib<T:UITableViewCell>(of: T.Type) {
        self.register(UINib(nibName: T.className, bundle: nil), forCellReuseIdentifier: T.className)
    }
    
    func deselectSelectedRow(animated: Bool)
    {
        if let indexPathForSelectedRow = self.indexPathForSelectedRow {
            self.deselectRow(at: indexPathForSelectedRow, animated: animated)
        }
    }
}
extension NSObject {
    class var className: String {
        return String(describing: self.self)
        
    }

}

