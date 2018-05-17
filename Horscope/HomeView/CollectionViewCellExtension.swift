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
        
        
        var icons = [UIImageView]()
        
        let matchView = UIStackView(arrangedSubviews: icons)
        matchView.translatesAutoresizingMaskIntoConstraints = false
        matchView.axis = .horizontal
        matchView.distribution = .equalSpacing
        return matchView
        
        
    }
    
    
}
