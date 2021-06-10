//
//  BaseTabBarController.swift
//  AppStoreJSONApi
//
//  Created by 石川大輔 on 2021/06/10.
//

import SwiftUI

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redViewController = UIViewController()
        redViewController.navigationItem.title = "Apps"
        
        let redNavController = UINavigationController(rootViewController: redViewController)
        redNavController.tabBarItem.title = "Apps"
        redNavController.tabBarItem.image = #imageLiteral(resourceName: "apps")
        redNavController.navigationBar.prefersLargeTitles = true
        
        let blueViewController = UIViewController()
        blueViewController.navigationItem.title = "Search"
        
        let blueNavController = UINavigationController(rootViewController: blueViewController)
        blueNavController.tabBarItem.title = "Seach"
        blueNavController.navigationBar.prefersLargeTitles = true
        blueNavController.tabBarItem.image = UIImage(named: "search")
        
        
        
        viewControllers = [
            redNavController,
            blueNavController
        ]
        
    }
    
}



struct BaseTabBarController_Previews: PreviewProvider {
    
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
    
    struct Container: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> BaseTabBarController {
            BaseTabBarController()
        }
        
        func updateUIViewController(_ uiViewController: BaseTabBarController, context: Context) {
            
        }
        
        typealias UIViewControllerType = BaseTabBarController
        
    }
}


