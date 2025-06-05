//
//  TabBarViewController.swift
//  OzinsheProject
//
//  Created by Adilet Kenesbekov on 22.05.2025.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
      forTabs()
    }

  func forTabs() {
    let homeVC = HomeViewController()
    let searchVC = SearchViewController()
    let profileVC = ProfileViewController()
    let favouriteVC = FavouriteViewController()

    homeVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "Home"), selectedImage: UIImage(named: "Home_Clicked"))
    searchVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "Search"), selectedImage: UIImage(named: "Search_Clicked"))
    profileVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "Profile"), selectedImage: UIImage(named: "Profile_Clicked"))
    favouriteVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "Favourite"), selectedImage: UIImage(named: "Favourite_Clicked"))

    setViewControllers([homeVC, searchVC, profileVC, favouriteVC], animated: true)
  }

}
