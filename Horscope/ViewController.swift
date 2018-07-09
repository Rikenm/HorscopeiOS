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
    var tv:TopView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        let topSafeArea = view.safeAreaInsets.top
        let bottomSafeArea = view.safeAreaInsets.bottom
       
        
        let first = UIViewController(nibName: nil, bundle: nil)

        first.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
        
        
        
        let nav1 = UINavigationController(rootViewController: first)
        
         nav1.navigationBar.barTintColor = UIColor(red:67/255, green:86/255, blue:127/255, alpha:1.0)
        
        nav1.navigationBar.isTranslucent = false
        
        
          tv = TopView(frame: CGRect(x: 0, y: topSafeArea, width:  UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.35 - topSafeArea));
        
        
 
        
         tv!.translatesAutoresizingMaskIntoConstraints = false
         first.view.addSubview(tv!)
         tv!.topAnchor.constraint(equalTo: first.view.safeAreaLayoutGuide.topAnchor).isActive = true
         tv!.leadingAnchor.constraint(equalTo: first.view.leadingAnchor).isActive = true
         tv!.trailingAnchor.constraint(equalTo: first.view.trailingAnchor).isActive = true
        tv!.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        tv!.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.35 - topSafeArea).isActive = true
        
        
        
        
        
        let bv = BottomView(frame: CGRect(x: 0, y:(UIScreen.main.bounds.height * 0.65) , width:  UIScreen.main.bounds.width, height:(UIScreen.main.bounds.height/2) - bottomSafeArea), collectionViewLayout : UICollectionViewFlowLayout())  //instance of my UICOllectionview
        bv.translatesAutoresizingMaskIntoConstraints = false

        first.view.addSubview(bv)

        bv.topAnchor.constraint(equalTo: tv!.bottomAnchor).isActive = true
       bv.bottomAnchor.constraint(equalTo: first.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
       bv.leadingAnchor.constraint(equalTo: first.view.leadingAnchor).isActive = true
       bv.trailingAnchor.constraint(equalTo: first.view.trailingAnchor).isActive = true

        
        

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
        
        
        tabBar.isTranslucent = true
        
        //tabBar.backgroundColor = UIColor(red:84/255, green:102/255, blue:139/255, alpha:1.0)
        
        //tabBar.backgroundColor = .clear
        //tabBar.tintColor = UIColor(red:0.81, green:0.87, blue:1.00, alpha:1.0)
        
        
        //tabs.viewControllers = [nav1, nav2, nav3]
        
        
        //tabBar.backgroundImage(UIImage())
        tabBar.barTintColor = UIColor(red:0.33, green:0.40, blue:0.55, alpha:0)
       // tabBar.barTintColor = .clear
        tabBar.tintColor = UIColor(red:0.81, green:0.87, blue:1.00, alpha:1.0)
        viewControllers = [nav1, nav2, nav3]
        
        // newtwork
        // TODO: pass in sign as well
        NetworkManager.shared.fetchData {[weak self] (isSuccess, data, error) in
            if (isSuccess){
 
//                var horo = data! as! Horoscope
//                print(horo.horoscope)
                if let horo = data{
                 let data = horo as! Horoscope
                DispatchQueue.main.async {
                    self?.tv?.passData(horoscope: data.horoscope, name: data.sunsign)
                    }
                }
                
            }else{
                print("nothing")
            }
            
        }
        
        
        
    }
    
   
    
    
   
    
    
    
    
    
   

    

}

