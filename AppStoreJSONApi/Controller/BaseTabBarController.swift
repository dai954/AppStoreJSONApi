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
        
        viewControllers = [
            createNavController(viewController: MusicController(), title: "Music", imageName: "music"),
            createNavController(viewController: TodayController(), title: "Today", imageName: "today_icon"),
            createNavController(viewController: AppsPageController(), title: "Apps", imageName: "apps"),
            createNavController(viewController: AppSearchController(), title: "Search", imageName: "search"),
        ]
        
    }
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: viewController)
        
        navController.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        
        
        return navController
        
    }
    
}


//MARK: - To generate a swiftUIPreview

//struct BaseTabBarController_Previews: PreviewProvider {
//
//    static var previews: some View {
//        Container().edgesIgnoringSafeArea(.all)
//    }
//
//    struct Container: UIViewControllerRepresentable {
//        func makeUIViewController(context: Context) -> BaseTabBarController {
//            BaseTabBarController()
//        }
//
//        func updateUIViewController(_ uiViewController: BaseTabBarController, context: Context) {
//
//        }
//
//        typealias UIViewControllerType = BaseTabBarController
//
//    }
//}


