//
//  SplashScreenViewController.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/15/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit


class SplashScreenViewController: UIViewController {
    
    
    
    var picker = PickerView()
    var rotation: CGFloat!
    var currentItem: String!
    var horscopeLabel : UILabel = UILabel()
    let bottonBlueView:UIView={
        
        let bv = UIView()
        bv.backgroundColor = UIColor(red: 88/255, green: 97/255, blue: 112/255, alpha: 1.0)
        bv.translatesAutoresizingMaskIntoConstraints = false
        return bv
    }()

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
        present(connectionVc,animated: true,completion: nil)
        
        
    }
    
    func setupGui(){
        let selectionLabel : UILabel = {
                
                let selectionLabel = UILabel()
                selectionLabel.text = "Select Your Horscope"
                selectionLabel.textColor = UIColor(displayP3Red: 87/255, green: 92/255, blue: 97/255, alpha: 1.0)
                selectionLabel.font = UIFont(name: "HelveticaNeue-Thin", size: 36.0)!
                selectionLabel.translatesAutoresizingMaskIntoConstraints = false
                return selectionLabel
                
            }()
        
        
        
        let horscopeLabel : UILabel = {
            
            

                    //let horscopeLabel = UILabel()
            
                   //picker.backgroundColor = .yellow
            
                    self.horscopeLabel = picker.label
                    //self.horscopeLabel.text = currentItem
                     self.horscopeLabel.textColor = UIColor(displayP3Red: 87/255, green: 92/255, blue: 97/255, alpha: 1.0)
                    let font2 = UIFont(name: "HelveticaNeue-Thin", size: 24)
                     self.horscopeLabel.font = font2
                   self.horscopeLabel.translatesAutoresizingMaskIntoConstraints = false
                  //self.horscopeLabel.backgroundColor = .red
                  return self.horscopeLabel

            }()
        
        
        
        
        let imageSelection : UIImageView = {
                
                let image = UIImage(named: "Libra")
                let iv = UIImageView(image: image)
                iv.image = iv.image!.withRenderingMode(.alwaysTemplate)
                iv.tintColor = .red
                iv.translatesAutoresizingMaskIntoConstraints = false
                return iv
            }()
        
        let nextButton : UIButton = {
               let nextButton = UIButton()
                let buttoncolor = UIColor(displayP3Red: 167/255, green: 168/255, blue: 173/255, alpha: 1)
                let buttoncolorhighlighted = UIColor(displayP3Red: 192/255, green: 213/255, blue: 255/255, alpha: 1)
                nextButton.setTitle("Next", for: .normal)
                nextButton.contentEdgeInsets = UIEdgeInsets(top: 8.0, left: 20.0, bottom: 8.0, right: 20.0)
                nextButton.backgroundColor = UIColor(displayP3Red: 59/255, green: 68/255, blue: 84/255, alpha: 1)
                nextButton.setTitleColor(buttoncolor ,for: .normal)
                nextButton.layer.cornerRadius = 20
                nextButton.setTitleColor(buttoncolorhighlighted, for: .highlighted)
                nextButton.addTarget(self, action: #selector(click), for: UIControlEvents.touchUpInside)
                //192,213,255
                nextButton.translatesAutoresizingMaskIntoConstraints = false
                return nextButton
                
            }()
        
        
        let scrollpick : UIPickerView = {
            
            
            picker.delegate = picker
            picker.dataSource = picker
            
            
            let scrollpick = picker
            
            rotation = -90 * (.pi/180)
            picker.transform = CGAffineTransform(rotationAngle: rotation)
            
            
            scrollpick.translatesAutoresizingMaskIntoConstraints = false
            
            return scrollpick
            
        }()
        
        
            view.addSubview(selectionLabel)
            selectionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 80).isActive = true
            selectionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        
//            view.addSubview(imageSelection)
//            imageSelection.topAnchor.constraint(equalTo: selectionLabel.bottomAnchor, constant: 60).isActive = true
//            imageSelection.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
            view.addSubview(scrollpick)
            scrollpick.topAnchor.constraint(equalTo: selectionLabel.bottomAnchor).isActive = true
            scrollpick.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        
            view.addSubview(horscopeLabel)
            horscopeLabel.bottomAnchor.constraint(equalTo: scrollpick.bottomAnchor,constant: -18).isActive = true
            horscopeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        

        
             view.addSubview(bottonBlueView)
             bottonBlueView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
             bottonBlueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
             bottonBlueView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
             bottonBlueView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
 
        
            view.addSubview(nextButton)
            //nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  ((view.bounds.width)/2)-19).isActive = true
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
            nextButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
             bottonBlueView.bringSubview(toFront: nextButton)

    }
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
