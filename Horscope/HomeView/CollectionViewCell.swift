//
//  CollectionViewCell.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height

    
    var bodyText: UILabel = {
        
        let bText = UILabel()
        bText.text = "SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL"
        bText.translatesAutoresizingMaskIntoConstraints = false
        bText.frame.size.height = bText.bounds.height
        bText.backgroundColor = UIColor(displayP3Red: 84/255, green: 102/255, blue: 139/255, alpha: 1)
        bText.font = UIFont(name: "AmericanTypewriter", size: 16)
        bText.textColor = UIColor(displayP3Red: 207/255, green: 223/255, blue: 255/255, alpha: 1)
        bText.numberOfLines = 0
        //bText.backgroundColor = .purple
        bText.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: .vertical)
        bText.setContentCompressionResistancePriority(UILayoutPriority.defaultHigh, for: .vertical)
        return bText
        
        
    }()
    
    
    let line: UIView = {
        
        
        let line = UIView()
        
        line.frame.size.height = 0
        line.frame.size.width = UIScreen.main.bounds.width
        line.backgroundColor = UIColor(displayP3Red: 151/255, green: 151/255, blue: 151/255, alpha: 1)
       
        
        
        line.translatesAutoresizingMaskIntoConstraints = false
        
        
        return line
        
    }()
    
    var titleLabel: UILabel = {
        
        let titleLabel = UILabel()
        titleLabel.text = "Love"
        titleLabel.font = UIFont(name: "AmericanTypewriter", size: 36)
        titleLabel.textColor = UIColor(displayP3Red: 207/255, green: 223/255, blue: 255/255, alpha: 1)
        
        titleLabel.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: .vertical)
        titleLabel.setContentCompressionResistancePriority(UILayoutPriority.defaultHigh, for: .vertical)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
       return titleLabel
    }()
    
    
    let bottomLabel: UILabel = {
        
        let bottomLabel = UILabel()
        bottomLabel.text = "Matches"
        bottomLabel.font = UIFont(name: "AmericanTypewriter", size: 16)
        bottomLabel.textColor = UIColor(displayP3Red: 131/255, green: 172/255, blue: 255/255, alpha: 1)
        //bottomLabel.backgroundColor = .red
        
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        return bottomLabel
    }()
    

    
    
    
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor(displayP3Red: 84/255, green: 102/255, blue: 139/255, alpha: 1)
        
        
        addSubview(titleLabel)
       
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 25).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -25).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30 ).isActive = true
        //titleLabel.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.size.width).isActive = true
        //titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        
        addSubview(line)
         line.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
         line.leftAnchor.constraint(equalTo: leftAnchor, constant: 25).isActive = true
         line.rightAnchor.constraint(equalTo: rightAnchor, constant: -25).isActive = true
         line.heightAnchor.constraint(equalToConstant: 1).isActive = true
         //line.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        
        
        addSubview(bodyText)
        bodyText.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 10).isActive = true
        bodyText.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25).isActive = true
        bodyText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25).isActive = true
        
        
        addSubview(bottomLabel)
        bottomLabel.topAnchor.constraint(equalTo: bodyText.bottomAnchor, constant: 10).isActive = true
        bottomLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25).isActive = true
        bottomLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25).isActive = true
        
        
        
        let stack = createstackv()
        
        addSubview(stack)
        stack.topAnchor.constraint(equalTo: bottomLabel.bottomAnchor, constant: 10).isActive = true
        stack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
        stack.leftAnchor.constraint(equalTo: leftAnchor, constant: 30).isActive = true
        stack.rightAnchor.constraint(equalTo: rightAnchor, constant: -30).isActive = true
        
        //.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    //setting up guis
    
    
    
    
    
}
