//
//  TopView.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit


class TopView: UIView {
    

    
    let horoLabel:UILabel = {
        let lv = UILabel()
        lv.text = "Libra"
        lv.backgroundColor = .green
        lv.translatesAutoresizingMaskIntoConstraints = false
        return lv
    }()
    
    let horoPic:UIImageView = {
        
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.image = UIImage(named: "Libra")
        iv.sizeToFit()
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    
    }()
    
    let horoPara:UILabel = {
       
        let label = UILabel()
        label.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
        label.backgroundColor = .purple
        
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // multiple line
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
        return label
        
    }()
    
    let constLabel : UILabel = {
       
        let lb = UILabel()
        lb.text = "Today's Prediction"
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor(displayP3Red: 192/255, green: 213/255, blue: 255/255, alpha: 1)
        
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    // Setup View
    func setUpView(){
        
        addSubview(horoPic)
        addSubview(horoLabel)
        addSubview(constLabel)
        addSubview(horoPara)
        
        
        // label
        horoLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        horoLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        
        
        // paragraph
        horoPara.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        horoPara.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        horoPara.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        horoPara.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
    
        // constant prediction text
        constLabel.topAnchor.constraint(equalTo: horoLabel.bottomAnchor, constant: 8).isActive = true
        constLabel.leadingAnchor.constraint(equalTo: horoLabel.leadingAnchor,constant: -4).isActive = true
        
        
        // image
        horoPic.trailingAnchor.constraint(equalTo: horoLabel.leadingAnchor, constant: -8).isActive = true
        
        
        
    }
    
    
    
}
