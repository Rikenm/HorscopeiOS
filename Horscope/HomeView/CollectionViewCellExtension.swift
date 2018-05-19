//
//  CollectionViewCellExtension.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit

extension CollectionViewCell{
    
    func createstackv() -> UIStackView {
        
        
        //some computation based on the saved variable
        
        
        
        
        var icons = [UIImageView]()
        
        icons.append(UIImageView(image: #imageLiteral(resourceName: "Libra")))
        icons.append(UIImageView(image: #imageLiteral(resourceName: "Libra")))
        icons.append(UIImageView(image: #imageLiteral(resourceName: "Libra")))
        
        let matchView = UIStackView(arrangedSubviews: icons)
        matchView.translatesAutoresizingMaskIntoConstraints = false
        matchView.axis = .horizontal
        matchView.distribution = .equalSpacing
        
        return matchView
        
        
    }
    
    
    
   
    
    
    
    
}
