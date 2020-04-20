//
//  SceneDelegate.swift
//  hiLott
//
//  Created by tranto on 20/4/20.
//  Copyright © 2020 Tran To. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let navigationView = NavigationView {
                MainView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            window.rootViewController = UIHostingController(rootView: navigationView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

}

