//
//  AppDelegate.swift
//  Afripods Light
//
//  Created by Oscar Silver on 2018-02-12.
//  Copyright © 2018 DDnD. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var firstViewController: UIViewController {
        return ViewController(nibName: nil, bundle: nil)
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = bootstrap()
        return true
    }
}

// MARK: Private Methods
private extension AppDelegate {
    func bootstrap() -> UIWindow {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = firstViewController
        window.makeKeyAndVisible()
        return window
    }
}

