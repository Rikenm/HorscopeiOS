//
//  CollectionViewCell.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    
    let bodyText: UITextView = {
        
        let bText = UITextView()
        bText.text = "SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL"
        
        bText.translatesAutoresizingMaskIntoConstraints = false
 
        return bText
        
        
    }()
    
    let titleLabel: UILabel = {
        
        let titleLabel = UILabel()
        titleLabel.text = "Love"
        
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
       return titleLabel
    }()
    
    
    let bottomLabel: UILabel = {
        
        let bottomLabel = UILabel()
        bottomLabel.text = "Love"
        
        
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        return bottomLabel
    }()
    

    
    
    
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor(displayP3Red: 84/255, green: 102/255, blue: 139/255, alpha: 1)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
