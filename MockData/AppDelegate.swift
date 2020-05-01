//
//  AppDelegate.swift
//  MockData
//
//  Created by Adithya hayagreeva on 5/1/20.
//  Copyright © 2020 Emirates NBD. All rights reserved.
//

import UIKit

#if DEBUG
    let mockEnabled = true
#else
    let mockEnabled = false
#endif

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
}

