//
//  HomeTabBarController.swift
//  MuVi Design app
//
//  Created by Neosoft on 12/12/23.
//

import UIKit
import WaveTab


class HomeTabBarController: WaveTabBarController {
    
    let homeTabBarVM = HomeTabBarViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()

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
        
        let findVC = FindVC(nibName: VCNames.FindVC.rawValue, bundle: nil)
        findVC.tabBarItem = UITabBarItem(title: homeTabBarVM.tabItems["item4"]?["title"], image: UIImage(named:  (homeTabBarVM.tabItems["item4"]?["image"])!) ?? UIImage(systemName: "heart"), tag: 4)
        
        let tabBarList = [discoverVC, moviesVC, foodDrinksVC, experienceVC, findVC]
        
        viewControllers = tabBarList.map { UINavigationController(rootViewController: $0) }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
}
