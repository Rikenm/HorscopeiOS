//
//  ViewController.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/15/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {
    
    
    var horscopekey:String = "Zero"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let first = UIViewController(nibName: nil, bundle: nil)

        first.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
        
        let nav1 = UINavigationController(rootViewController: first)
        
         nav1.navigationBar.barTintColor = UIColor(red:67/255, green:86/255, blue:127/255, alpha:1.0)
        
        
        //CGSize(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height)/2)
        
        
        
//        let tv = TopView(frame: CGRect(x: 0, y: 0, width:  UIScreen.main.bounds.width, height: 200));
//        tv.translatesAutoresizingMaskIntoConstraints = false
//
//        first.view.addSubview(tv)
//        tv.topAnchor.constraint(equalTo: first.view.topAnchor).isActive = true
//        tv.leadingAnchor.constraint(equalTo: first.view.leadingAnchor).isActive = true
//        tv.trailingAnchor.constraint(equalTo: first.view.trailingAnchor).isActive = true
        
        
        
        
        
        
      let bv = BottomView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())  //instance of my UICOllectionview
    bv.translatesAutoresizingMaskIntoConstraints = false
////      bv.contentSize = CGSize(width: (UIScreen.main.bounds.maxX-UIScreen.main.bounds.minX), height: (UIScreen.main.bounds.maxY-UIScreen.main.bounds.minY)/2)
        first.view.addSubview(bv)

        bv.topAnchor.constraint(equalTo: first.view.topAnchor, constant: 300).isActive = true
       bv.bottomAnchor.constraint(equalTo: first.view.bottomAnchor).isActive = true
       bv.leadingAnchor.constraint(equalTo: first.view.leadingAnchor).isActive = true
       bv.trailingAnchor.constraint(equalTo: first.view.trailingAnchor).isActive = true

        
        
//        let bv2 = UIView()
//        bv2.frame.size.height = 500
//        bv2.frame.size.width = (UIScreen.main.bounds.width)
//        bv2.translatesAutoresizingMaskIntoConstraints = false
//        bv2.backgroundColor = .red
//        first.view.addSubview(bv2)
//        bv2.topAnchor.constraint(equalTo: tv.bottomAnchor).isActive = true
//        bv2.bottomAnchor.constraint(equalTo: first.view.bottomAnchor).isActive = true
//        bv2.leadingAnchor.constraint(equalTo: first.view.leadingAnchor).isActive = true
//        bv2.trailingAnchor.constraint(equalTo: first.view.trailingAnchor).isActive = true
        
        
        
        
        
        
        
        
        
        
        
        
        //nav1.viewControllers = [first]
        
        nav1.tabBarItem = UITabBarItem(title: "Nav1", image: #imageLiteral(resourceName: "Rectangle 2"), tag: 1)
        
        
        let nav2 = UINavigationController()
        let second = UIViewController(nibName: nil, bundle: nil)
        nav2.navigationBar.barTintColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
        
        second.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
        nav2.viewControllers = [second]
        nav2.tabBarItem = UITabBarItem(title: "Nav2", image: #imageLiteral(resourceName: "Rectangle 2"), tag: 2)
        
        let nav3 = UINavigationController()
        let third = UIViewController(nibName: nil, bundle: nil)
        nav3.navigationBar.barTintColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
        third.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
        nav3.viewControllers = [third]
        nav3.tabBarItem = UITabBarItem(title: "Nav3", image: #imageLiteral(resourceName: "Rectangle 2"), tag: 3)
        
        //let tabs = UITabBarController()
        
        //tabs.tabBar.barTintColor = UIColor(red:0.33, green:0.40, blue:0.55, alpha:1.0)
        
        //tabs.tabBar.unselectedItemTintColor = UIColor(red:0.42, green:0.44, blue:0.49, alpha:1.0)
        //tabs.tabBar.unselectedItemTintColor = UIColor.red
        
        
        //tabs.tabBar.isTranslucent = false
        
        //tabs.tabBar.backgroundColor = UIColor(red:0.33, green:0.40, blue:0.55, alpha:1.0)
        
        //tabs.tabBar.tintColor = UIColor(red:0.81, green:0.87, blue:1.00, alpha:1.0)
        
        
        //tabs.viewControllers = [nav1, nav2, nav3]
        
        
        
        tabBar.barTintColor = UIColor(red:0.33, green:0.40, blue:0.55, alpha:1.0)
        tabBar.tintColor = UIColor(red:0.81, green:0.87, blue:1.00, alpha:1.0)
        viewControllers = [nav1, nav2, nav3]
        
        
        
       
        
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    
    
    
    
   

    

}

