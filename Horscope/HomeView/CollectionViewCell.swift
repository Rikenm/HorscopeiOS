//
//  CollectionViewCell.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    
    var bodyText: UITextView = {
        
        let bText = UITextView()
        bText.text = "SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL"
        bText.translatesAutoresizingMaskIntoConstraints = false
        bText.backgroundColor = .green
        return bText
        
        
    }()
    
    
    let line: UIView = {
        
        
        let line = UIView()
        
        line.frame.size.height = 2
        line.backgroundColor = .red
        
        
        
        return line
        
    }()
    
    var titleLabel: UILabel = {
        
        let titleLabel = UILabel()
        titleLabel.text = "Love"
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
       return titleLabel
    }()
    
    
    let bottomLabel: UILabel = {
        
        let bottomLabel = UILabel()
        bottomLabel.text = "fight for everything"
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        return bottomLabel
    }()
    

    
    
    
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor(displayP3Red: 84/255, green: 102/255, blue: 139/255, alpha: 1)
        
        
        addSubview(titleLabel)
       
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 10).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10 ).isActive = true
        //titleLabel.bottomAnchor.constraint(equalTo:bottomAnchor, constant: 10).isActive = true
        
        
        addSubview(line)
         line.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
         line.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
         line.rightAnchor.constraint(equalTo: rightAnchor, constant: 10).isActive = true
        
        
        let stack = createstackv()
        
        addSubview(stack)
        stack.topAnchor.constraint(equalTo: line.bottomAnchor).isActive = true
        stack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        stack.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        stack.rightAnchor.constraint(equalTo: rightAnchor, constant: 10).isActive = true
        stack.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    //setting up guis
    
    
    
    
    
}
