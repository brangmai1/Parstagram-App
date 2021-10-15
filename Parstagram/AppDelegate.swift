//
//  AppDelegate.swift
//  Parstagram
//
//  Created by Brang Mai on 10/5/21.
//

import UIKit
import Parse

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
//    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let parseConfig = ParseClientConfiguration {
                    $0.applicationId = "H0SjMW0cnJNUn5p9enOq3khufC5m6hohdJqFIUAA" // <- UPDATE
                    $0.clientKey = "LODDLLPordPb5igjgloJmuBmrvJwgP8APnIKoESo" // <- UPDATE
                    $0.server = "https://parseapi.back4app.com"
            }
            Parse.initialize(with: parseConfig)
        Thread.sleep(forTimeInterval: 2.0)
        
//        if PFUser.current() != nil {
//            let main = UIStoryboard(name: "Main", bundle: nil)
//            let feedNavigationController = main.instantiateViewController(withIdentifier: "FeedNavigationController")
//            window?.rootViewController = feedNavigationController
//        }
        
//        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
//        let delegate = windowScene.delegate as? SceneDelegate else { return }
//        delegate.window?.rootViewController = loginViewController
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

