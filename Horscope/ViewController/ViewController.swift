//
//  ViewController.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/15/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UITabBarController {
    
    
    var horscopekey:String = "Zero"
    var context:NSManagedObjectContext?
    var tv:TopView?

    override func viewDidLoad() {
        super.viewDidLoad()

        context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        // Do any additional setup after loading the view, typically from a nib.
        let topSafeArea = view.safeAreaInsets.top
        let bottomSafeArea = view.safeAreaInsets.bottom
       
       
        let first = UIViewController(nibName: nil, bundle: nil)
        first.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
       
        
        
        let nav1 = UINavigationController(rootViewController: first)
         nav1.navigationBar.barTintColor = UIColor(red:77/255, green:86/255, blue:103/255, alpha:1.0)
         nav1.navigationBar.isTranslucent = false
         
        
          tv = TopView(frame: CGRect(x: 0, y: topSafeArea, width:  UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.35 - topSafeArea));
        
        
        let data = fetchData()

         tv!.translatesAutoresizingMaskIntoConstraints = false
         first.view.addSubview(tv!)
         tv!.topAnchor.constraint(equalTo: first.view.safeAreaLayoutGuide.topAnchor).isActive = true
         tv!.leadingAnchor.constraint(equalTo: first.view.leadingAnchor).isActive = true
         tv!.trailingAnchor.constraint(equalTo: first.view.trailingAnchor).isActive = true
        tv!.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        tv!.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.35 - topSafeArea).isActive = true
        
        
        
        
        
        let bv = BottomView(frame: CGRect(x: 0, y:(UIScreen.main.bounds.height * 0.65) , width:  UIScreen.main.bounds.width, height:(UIScreen.main.bounds.height/2) - bottomSafeArea), collectionViewLayout : UICollectionViewFlowLayout())  //instance of my UICOllectionview
        bv.translatesAutoresizingMaskIntoConstraints = false
        
        // TODO: don't even array instead send type HoroScope[0]
        bv.data = data[0]
        first.view.addSubview(bv)

        bv.topAnchor.constraint(equalTo: tv!.bottomAnchor).isActive = true
       bv.bottomAnchor.constraint(equalTo: first.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
       bv.leadingAnchor.constraint(equalTo: first.view.leadingAnchor).isActive = true
       bv.trailingAnchor.constraint(equalTo: first.view.trailingAnchor).isActive = true
        //nav1.viewControllers = [first]
        
        nav1.tabBarItem = UITabBarItem(title: "Sign", image: #imageLiteral(resourceName: "horotab"), tag: 1)
        

        // viewcontroller setting is invoke
        let nav2 = UINavigationController()
         nav2.navigationBar.isTranslucent = false
        let second = SettingVC()
        nav2.navigationBar.barTintColor = UIColor(red:77/255, green:86/255, blue:103/255, alpha:1.0)
        nav2.viewControllers = [second]
        nav2.tabBarItem = UITabBarItem(title: "Matches", image: #imageLiteral(resourceName: "setting"), tag: 2)
        
        let nav3 = UINavigationController()
        let third = UIViewController(nibName: nil, bundle: nil)
        nav3.navigationBar.barTintColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
        third.view.backgroundColor = UIColor(red:65/255, green:86/255, blue:127/255, alpha:1.0)
        nav3.viewControllers = [third]
        nav3.tabBarItem = UITabBarItem(title: "Setting", image: #imageLiteral(resourceName: "setting"), tag: 3)
        
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
        tabBar.barTintColor = UIColor(red:77/255, green:86/255, blue:103/255, alpha:1.0)
       // tabBar.barTintColor = .clear
        tabBar.tintColor = UIColor(red:0.81, green:0.87, blue:1.00, alpha:1.0)
        viewControllers = [nav1, nav2, nav3]
        

        // get fake data
        //TODO: Change the fake string
        let sign = "libra" // change this
        getData(ofSign: sign)
        
        // add to fake CoreData
        
        

    }
   

}

//////////////////////////////////////////////////////////////////////////////////////////
//MARK:- Network stuff
extension ViewController{
    
    func getData(ofSign:String){
        // newtwork
        // TODO: Fetch CoreData
        NetworkManager.shared.fetchData(sign: ofSign) {[weak self] (isSuccess, data, error) in
            if (isSuccess){
                if let horo = data{
                    let data = horo as! Horoscope
                    DispatchQueue.main.async {
                        self?.tv?.passData(horoscope: data.horoscope, name: data.sunsign)
                        // fetch CoreData
                    }
                }else{ return } // no data in data
            }else{
                // network problem
                guard let err = error else {return}
                print(err)
                return
            }
            
        }
        
    }
    
}
//////////////////////////////////////////////////////////////////////////////////////////
//MARK: Core Data
extension ViewController{
    
    // MARK: Add from Json file
    func addCoreData(){
       // adding data part
        if let context = context {
            
            do{
                let hc = HoroscopeCore(context: context)
                hc.friends = ["Aqua","Leo"]
                hc.love = "There is a very light and warm atmosphere around right now, with the current aspect at play. It is perfect for any parties or lunches, and for entertaining in general, as others are very much interested in making new contacts."
                hc.celebrity = ["Eminem","Will Smith","Matt Damon"]
                hc.matches = ["Cancer","Capricorn","Aries"]
            
                try context.save()}
                
            catch{
                print(error)
            }
            
        }
        
    }
    
    // TODO: check if there are more than 1
    // if more than discard the request
    func fetchData()->[HoroscopeCore]{
       
        addCoreData()
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "HoroscopeCore")
        let data = try! context?.fetch(request) as! [HoroscopeCore]
        return data
        
    }
}

