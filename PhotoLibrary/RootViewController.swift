//
//  ViewController.swift
//  PhotoLibrary
//
//  Created by Yudai.Hirose on 2020/04/16.
//  Copyright © 2020 bannzai. All rights reserved.
//

import UIKit

final class RootViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
}

private extension RootViewController {
    func setup() {
        let photoListViewController = PhotoListViewController()
        let navigationController = MainNavigationViewController(rootViewController: photoListViewController)
        addChild(navigationController)
        view.addSubview(navigationController.view)
        navigationController.didMove(toParent: self)
    }
}
