//
//  AppDelegate.swift
//  week6Project
//
//  Created by Rania Arbash on 2023-06-12.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var letters = ["a", "b","c", "d","e", "f","g", "h"]

    var allStudents = [Student]()
    
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        allStudents.append(Student(name: "Mary", id: 2233))
        allStudents.append(Student(name: "Smith", id: 34556))
        allStudents.append(Student(name: "Lee", id: 0111))
        


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

