//
//  NavigationController.swift
//  PBPopupControllerSample
//
//  Created by Patrick BODET on 22/06/2018.
//  Copyright © 2018 Patrick BODET. All rights reserved.
//

import UIKit
import PBPopupController

class NavigationController: UINavigationController {

    var toolbarIsShown: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let splitViewController = self.splitViewController as? SplitViewController {
            if let navigationController = splitViewController.viewControllers.first as? UINavigationController {
                navigationController.topViewController?.title = splitViewController.title
            }
        }
        else if let tabBarController = self.tabBarController {
            self.topViewController?.title = tabBarController.title
            
        }
        else {
            self.topViewController?.title = self.title
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    deinit {
        PBLog("Deinit: \(self)")
    }
}
