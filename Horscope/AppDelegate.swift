//
//  AppDelegate.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/15/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        
        UIApplication.shared.statusBarStyle = .lightContent
        
        let flag = false
        
//        let nav1 = UINavigationController()
//
//        nav1.navigationBar.barTintColor = UIColor(red:67/255, green:86/255, blue:127/255, alpha:1.0)
//
//        nav1.navigationBar.isTranslucent = false
//        let first = ViewController(nibName: nil, bundle: nil)
//        first.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
//        nav1.viewControllers = [first]
//        nav1.tabBarItem = UITabBarItem(title: "Nav1", image: #imageLiteral(resourceName: "Rectangle 2"), tag: 1)
//
//
//        let nav2 = UINavigationController()
//        let second = ViewController(nibName: nil, bundle: nil)
//        nav2.navigationBar.barTintColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
//
//        second.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
//        nav2.viewControllers = [second]
//        nav2.tabBarItem = UITabBarItem(title: "Nav2", image: #imageLiteral(resourceName: "Rectangle 2"), tag: 2)
//
//        let nav3 = UINavigationController()
//        let third = ViewController(nibName: nil, bundle: nil)
//        nav3.navigationBar.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
//        third.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
//        nav3.viewControllers = [third]
//        nav3.tabBarItem = UITabBarItem(title: "Nav3", image: #imageLiteral(resourceName: "Rectangle 2"), tag: 3)
//
//        var tabs = UITabBarController()
//
//        tabs.tabBar.barTintColor = UIColor(red:0.33, green:0.40, blue:0.55, alpha:1.0)
//
//        //tabs.tabBar.unselectedItemTintColor = UIColor(red:0.42, green:0.44, blue:0.49, alpha:1.0)
//        tabs.tabBar.unselectedItemTintColor = UIColor.red
//
//
//        //tabs.tabBar.isTranslucent = false
//
//        //tabs.tabBar.backgroundColor = UIColor(red:0.33, green:0.40, blue:0.55, alpha:1.0)
//
//        tabs.tabBar.tintColor = UIColor(red:0.81, green:0.87, blue:1.00, alpha:1.0)
//
//
//        tabs.viewControllers = [nav1, nav2, nav3]
//
//        if (flag) {
//
//        let rootviewCS = SplashScreenViewController(nibName: nil, bundle: nil)
//
//            rootviewCS.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
//            window?.rootViewController = rootviewCS
//
//
//        }
//
//        else {
//
//
//
//        window?.rootViewController = tabs
//
//
//
//
//        }
        
        
        if (flag){ // splash screen
            let rootviewCS = SplashScreenViewController(nibName: nil, bundle: nil)
            rootviewCS.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
            window?.rootViewController = rootviewCS
            
        }
        else { //tabs
            let rootviewCS = ViewController()
             window?.rootViewController = rootviewCS
            
            
            
            
        }
        
        
        
        
        
        
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        self.saveContext()
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "Horscope")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

