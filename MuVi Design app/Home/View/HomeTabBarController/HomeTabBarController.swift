//
//  HomeTabBarController.swift
//  MuVi Design app
//
//  Created by Neosoft on 12/12/23.
//

import UIKit

class HomeTabBarController: UITabBarController {
    let homeTabBarVM = HomeTabBarViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.tabBar.backgroundColor = .white
        let discoverVC = UIViewController()
        discoverVC.view.backgroundColor = .blue
        discoverVC.tabBarItem = UITabBarItem(title: homeTabBarVM.tabItems["item0"]?["title"], image: UIImage(named:  (homeTabBarVM.tabItems["item0"]?["image"])!) ?? UIImage(systemName: "heart"), tag: 0)
        
        let moviesVC = UIViewController()
        moviesVC.view.backgroundColor = .red
        moviesVC.tabBarItem = UITabBarItem(title: homeTabBarVM.tabItems["item1"]?["title"], image: UIImage(named:  (homeTabBarVM.tabItems["item1"]?["image"])!) ?? UIImage(systemName: "heart"), tag: 1)
        
        let foodDrinksVC = UIViewController()
        foodDrinksVC.view.backgroundColor = .systemPink
        foodDrinksVC.tabBarItem = UITabBarItem(title: homeTabBarVM.tabItems["item2"]?["title"], image: UIImage(named:  (homeTabBarVM.tabItems["item2"]?["image"])!) ?? UIImage(systemName: "heart"), tag: 2)
        
        let experienceVC = UIViewController()
        experienceVC.view.backgroundColor = .orange
        experienceVC.tabBarItem = UITabBarItem(title: homeTabBarVM.tabItems["item3"]?["title"], image: UIImage(named:  (homeTabBarVM.tabItems["item3"]?["image"])!) ?? UIImage(systemName: "heart"), tag: 3)
        
        let findVC = UIViewController()
        findVC.view.backgroundColor = .gray
        findVC.tabBarItem = UITabBarItem(title: homeTabBarVM.tabItems["item4"]?["title"], image: UIImage(named:  (homeTabBarVM.tabItems["item4"]?["image"])!) ?? UIImage(systemName: "heart"), tag: 4)
        
        let tabBarList = [discoverVC, moviesVC, foodDrinksVC, experienceVC, findVC]
        
        viewControllers = tabBarList.map { UINavigationController(rootViewController: $0) }
    }
}

extension HomeTabBarController: UITabBarControllerDelegate{
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        let index = self.tabBar.items?.firstIndex(of: viewController.tabBarItem)
        let subView = tabBar.subviews[index!+1].subviews.first as? UIImageView
        self.performSpringAnimation(imgView: subView ?? UIImageView())
    }
    
    func performSpringAnimation(imgView: UIImageView) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            imgView.transform = CGAffineTransform.init(scaleX: 1.2, y: 1.2)
        }, completion: { (flag) in
            UIView.animate(withDuration: 0.5, animations: {
                imgView.transform = CGAffineTransform.identity
            })
        })
    }
}
