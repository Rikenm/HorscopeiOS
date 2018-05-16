//
//  SplashScreenViewController.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/15/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit


class SplashScreenViewController: UIViewController {
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let  connectionVc = ViewController()
       
        
        setupGui()
        
    }
    @objc
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func click(sender: UIButton) {
        let  connectionVc = ViewController()
        connectionVc.horscopekey = "Libra"
        let vcSplashtoTabVC = connectionVc.setTabBar()
        
        
        present(vcSplashtoTabVC,animated: true,completion: nil)
        
        
    }
    
    func setupGui(){
        let selectionLabel : UILabel = {
                
                let selectionLabel = UILabel()
                selectionLabel.text = "Select Your Horscope"
                selectionLabel.textColor = UIColor(displayP3Red: 251/255, green: 252/255, blue: 255/255, alpha: 1.0)
                selectionLabel.font = UIFont(name: "HelveticaNeue-Thin", size: 36.0)!
                selectionLabel.translatesAutoresizingMaskIntoConstraints = false
                return selectionLabel
                
            }()
        
        
        
        let horscopeLabel : UILabel = {
                
                    let horscopeLabel = UILabel()
                    horscopeLabel.text = "Libra"
                    horscopeLabel.textColor = UIColor(displayP3Red: 251/255, green: 252/255, blue: 255/255, alpha: 1.0)
                    let font2 = UIFont(name: "HelveticaNeue-Thin", size: 24)
                    horscopeLabel.font = font2
                    horscopeLabel.translatesAutoresizingMaskIntoConstraints = false
                    return horscopeLabel
                
            }()
        
        
        
        
        let imageSelection : UIImageView = {
                
                let image = UIImage(named: "Libra")
                let iv = UIImageView(image: image)
                iv.translatesAutoresizingMaskIntoConstraints = false
                return iv
            }()
        
        let nextButton : UIButton = {
               let nextButton = UIButton()
                let buttoncolor = UIColor(displayP3Red: 65/255, green: 86/255, blue: 127/255, alpha: 1)
                let buttoncolorhighlighted = UIColor(displayP3Red: 192/255, green: 213/255, blue: 255/255, alpha: 1)
                nextButton.setTitle("Next", for: .normal)
                nextButton.contentEdgeInsets = UIEdgeInsets(top: 8.0, left: 20.0, bottom: 8.0, right: 20.0)
                nextButton.backgroundColor = UIColor(displayP3Red: 192/255, green: 213/255, blue: 255/255, alpha: 1)
                nextButton.setTitleColor(buttoncolor ,for: .normal)
                nextButton.setTitleColor(buttoncolorhighlighted, for: .highlighted)
                nextButton.addTarget(self, action: #selector(click), for: UIControlEvents.touchUpInside)
                //192,213,255
                nextButton.translatesAutoresizingMaskIntoConstraints = false
                return nextButton
                
            }()
        
            view.addSubview(selectionLabel)
            selectionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 80).isActive = true
            selectionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        
            view.addSubview(imageSelection)
            imageSelection.topAnchor.constraint(equalTo: selectionLabel.bottomAnchor, constant: 60).isActive = true
            imageSelection.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
            view.addSubview(horscopeLabel)
            horscopeLabel.topAnchor.constraint(equalTo: imageSelection.bottomAnchor, constant: 20).isActive = true
            horscopeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
            view.addSubview(nextButton)
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
