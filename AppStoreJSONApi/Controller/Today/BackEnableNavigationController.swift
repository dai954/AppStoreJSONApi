//
//  BackEnableNavigationController.swift
//  AppStoreJSONApi
//
//  Created by 石川大輔 on 2021/07/05.
//

import UIKit

class BackEnableNavigationController: UINavigationController, UIGestureRecognizerDelegate {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.interactivePopGestureRecognizer?.delegate = self
    }
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return self.viewControllers.count > 1
    }
}
