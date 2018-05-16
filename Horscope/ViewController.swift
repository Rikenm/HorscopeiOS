//
//  ViewController.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/15/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var horscopekey:String = "Zero"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(horscopekey)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func setTabBar()->UITabBarController{
        
        let nav1 = UINavigationController()
        
        nav1.navigationBar.barTintColor = UIColor(red:67/255, green:86/255, blue:127/255, alpha:1.0)
        
        nav1.navigationBar.isTranslucent = false
        let first = ViewController(nibName: nil, bundle: nil)
        first.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
        nav1.viewControllers = [first]
        nav1.tabBarItem = UITabBarItem(title: "Nav1", image: #imageLiteral(resourceName: "Rectangle 2"), tag: 1)
        
        
        let nav2 = UINavigationController()
        let second = ViewController(nibName: nil, bundle: nil)
        nav2.navigationBar.barTintColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
        
        second.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
        nav2.viewControllers = [second]
        nav2.tabBarItem = UITabBarItem(title: "Nav2", image: #imageLiteral(resourceName: "Rectangle 2"), tag: 2)
        
        let nav3 = UINavigationController()
        let third = ViewController(nibName: nil, bundle: nil)
        nav3.navigationBar.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
        third.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
        nav3.viewControllers = [third]
        nav3.tabBarItem = UITabBarItem(title: "Nav3", image: #imageLiteral(resourceName: "Rectangle 2"), tag: 3)
        
        let tabs = UITabBarController()
        
        tabs.tabBar.barTintColor = UIColor(red:0.33, green:0.40, blue:0.55, alpha:1.0)
        
        //tabs.tabBar.unselectedItemTintColor = UIColor(red:0.42, green:0.44, blue:0.49, alpha:1.0)
        tabs.tabBar.unselectedItemTintColor = UIColor.red
        
        
        //tabs.tabBar.isTranslucent = false
        
        //tabs.tabBar.backgroundColor = UIColor(red:0.33, green:0.40, blue:0.55, alpha:1.0)
        
        tabs.tabBar.tintColor = UIColor(red:0.81, green:0.87, blue:1.00, alpha:1.0)
        
        
        tabs.viewControllers = [nav1, nav2, nav3]
        
        return tabs
        
    }
    

}

